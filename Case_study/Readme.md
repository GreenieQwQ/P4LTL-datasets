## Temporal cases

### Test
To test all, simply run

```
  python test.py
```

Yet make sure `Check.sh` is in PATH. Default timeout for each task is 600s, you can change it in the beginning of `test.py`, you can also test some certain directory instead of all by a slight change in the end of `test.py`.

### Description

This dataset contains P4 codes/specifications that describe packet properties that involve more than one time step.

- 注：**验证until一定要小心**，因为until包含了“事件一定会发生”的含义，所以可能下面的spec存在until和weak until的混/误用

### Details

#### P4NIS

- 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
  - 13.5-Network Security-Connection Security

- spec1：负载均衡：包不会永远仅转发至一个端口

  - ```
    //#LTLProperty: ![]((AP(standard_metadata.ingress_port == 0 && old(hdr.ethernet.dstAddr) != 0xffffffffffff && old(hdr.ipv4.dstAddr) != 0x7b7b7b7b && old(hdr.ethernet.srcAddr) != 0x0 && fwd(1))))
    //#LTLFairness: [](<>(AP(standard_metadata.ingress_port == 0 && old(hdr.ethernet.dstAddr) != 0xffffffffffff && old(hdr.ipv4.dstAddr) != 0x7b7b7b7b && old(hdr.ethernet.srcAddr) != 0x0)))
    ```

- spec2：负载均衡：包会被分布至多个不同链路（端口1、2、3）
  - In the first line of defense, packets that belong to one traffic flow are disorderly transmitted via various links.
    - Fairness: `[]<>(standard_metadata.ingress_port == 0 && hdr.ethernet.dstAddr != 0xfffffffffff && hdr.ethernet.srcAddr != 0x0 && && hdr.ipv4.dstAddr != 0x7b7b7b7b)`——不断有符合均衡条件的包（不为特殊的以太地址+非dns request）进入，下用Cond谓词简化描述
    - Property: `<>(Cond && fwd(1)) && <>(Cond && fwd(2)) && <>(Cond && fwd(3))`

#### CoDel

- 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
  - 10.6-Traffic Management and Congestion
    Control-Active Queue Management (AQM) 
- spec1:  As long as the queuing delay is shorter than the target parameter, no packets are dropped.  If the queuing delay exceeds the target by a value that is at least as large as the interval, a packet is dropped.
  - `meta.codel.state_dropping == 0 && !(standard_metadata.deq_timedelta < SOJOURN_TARGET) && meta.codel.time_now >= meta.codel.drop_time => drop`
- spec2: This procedure is repeated until the queuing delay is under the target threshold again.
  - until的spec仅在drop state成立
  - `[]((old(meta.codel.state_dropping) == 1) ==> (meta.codel.queue_id = a && meta.codel.time_now >= meta.codel.drop_next ==> drop) U (meta.codel.queue_id = a && standard_metadata.deq_timedelta < SOJOURN_TARGET))`
  - 感觉这个until的性质似乎比较有说服力
    - 因为这个case是一个典型的stateful的数据平面
    - 并且描述的功能涉及了多个时间步的性质
- 经调研源码，**Codel的功能基本实现在数据平面 仅设置drop时长需要控制平面的参与 是一个比较典型的stateful数据平面**
  - 处理包的流程大概是这样的：
    - 首先使用寄存器记录上一个包处理的情形，在上一个包处理的时候，就已经计算好了这个包的最迟接收时间——这个接受时间是一个固定值，为`timenow + CONSTANT`（因为使用寄存器存储，天然地可以做到每个port独立计算时间）
    - 初始状态不为drop状态：
      - 此时若排队的时间小于阈值，则刷新drop time，不对包进行drop
      - 否则排队时间过长，此时判断包是否到达最迟接收时间，若到达，则丢弃这个包，进入drop state，并且存储进入寄存器，下次处理就从drop状态开始，并且查询控制平面表项，控制平面由用户根据drop状态drop的数目计算下一个包的最迟接受时间
    - drop状态：
      - 若此时排队的时间小于阈值，则刷新drop time，退出drop状态，这个包正常转发
      - 否则判断是否到达下一个包的最迟接受时间，若未到达则转发，否则丢弃，增加计数器，查询表项，依据drop cnt计算下一个包的最迟接收时间

#### Blink

- 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
  - 11.5-Routing and Forwarding-Data Plane Resilience
- 使用register的一个stateful实现
- Blink [373] detects failures **without controller interaction** by analyzing TCP signals. The core concept is that the behavior of a TCP flow is predictable when it is disrupted, i.e., the same packet is retransmitted multiple times. 
  - 综述的概括
- spec: When this information is aggregated over multiple flows, it creates a characteristic failure signal that is leveraged by data plane switches to **trigger** packet rerouting to another neighbor.
  - 综述的概括
  - 使用sw_sum来表示the same packet is retransmitted multiple times 
  - Property: `[](custom_metadata.id == a && nh_avaibility_1[a] = 0 ==>  (custom_metadata.id == a && custom_metadata.next_hop_port = 3*a U custom_metadata.id == a && sw_sum[a] > threshold_registers[a]))`
  - Fairness: `[](pp.tcp.isValid() && custom_metadata.use_blink == 1)`

#### Dfs/Bfs

- 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
  - 11.5-Routing and Forwarding-Data Plane Resilience
  
- Sedar et al. [359] implement a fast failover mechanism **without control plane interaction** for P4 switches. The mechanism uses P4 registers or metadata fields for bit strings that indicate if a particular port is considered up or down. In a match-action table, the port bit string provides an additional match field to determine whether a particular port is up or down. Depending on the port status, default or backup actions are executed. The authors rely on a local P4 agent to populate the port bit strings.
  - 综述的概括
  
- spec: we need to guarantee that a packet is sent to a parent node **only after** having been sent through all the other links
  - ```
    //#LTLProperty: [](AP(meta.local_metadata.out_port == meta.local_metadata.pkt_par ==> meta.local_metadata.is_completed == 1 && meta.local_metadata.is_completed == 1 ==> meta.local_metadata.out_port == meta.local_metadata.pkt_par))
    //#LTLFairness: [](AP(valid(hdr.dfsTag)))
    ```
    
  - ```
    //#LTLProperty: []((AP(meta.local_metadata.is_completed == 0)) ==> (AP(meta.local_metadata.out_port != meta.local_metadata.pkt_par) W AP(meta.local_metadata.is_completed == 1)))
    //#LTLFairness: [](AP(valid(hdr.dfsTag)))
    ```
    
  - 除非发给parent，否则遍历完毕其他link这一过程并未complete
  
  - 论文《Supporting Emerging Applications With Low-Latency Failover in P4》中的原文描述

#### P4sp

- 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
  - 11.5-Routing and Forwarding-Data Plane Resilience
  
- Lindner et al. [368] present a novel prototype for in-network source pro-
  tection in P4. A P4-capable switch receives sensor data from a primary and secondary sensor, but forwards only the data from the primary sensor if available.
  
- 《P4 In-Network Source Protection for Sensor Failover》
  - 论文中仅有一个单步的性质描述：Data from the redundant sensor is only forwarded, if the elapsed time since the last data portion of the primary sensor exceeds a certain threshold Tt.
  
- [![xSvJG4.png](https://s1.ax1x.com/2022/09/17/xSvJG4.png)](https://imgse.com/i/xSvJG4)
  
  - 但是论文给出了转发行为的描述图——从图中我们可以归纳出时序性质：“如果没有到阈值包就经由副接口转发了，那么我们可以得到之前必定存在行为发生：到时间阈值后接收到的包为副sensor并被转发”
  
  - spec: 
  
    - ```
      //#LTLProperty: AP(!(meta.accepted == 1 && standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] <= meta.period)) W AP(meta.accepted == 1 && standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] > meta.period)
      //#LTLFairness: [](AP(hdr.ethernet.etherType == 0xDD01))
      ```
  
    - “不可能出现没有到阈值包就经由副接口转发，直到到时间阈值后接收到的包为副sensor并被转发”
  
  - spec2：
  
    - ```
      //#LTLProperty: [](AP(meta.accepted == 1 && standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] > meta.period) ==> X(AP(standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] <= meta.period ==> meta.accepted == 1)))
      //#LTLFairness: [](AP(hdr.ethernet.etherType == 0xDD01))
      ```
  
    - “出现到了阈值的包后 后续转发都可以通过副接口转发”
  
  - spec3：
  
    - “主端口重新接收到包重置以后 副端口接收到在阈值之内接收到包应该drop”
  
    - ```
      //#LTLProperty: [](AP(meta.accepted == 1 && standard_metadata.ingress_port == meta.primary) ==> X(AP(standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] <= meta.period ==> meta.accepted == 0)))
      //#LTLFairness: [](AP(hdr.ethernet.etherType == 0xDD01))
      ```
  
  - 观察实现，似乎源码并没有实现上述逻辑——因此若UA能够找到反例，我们就得到了一个通过P4LTL找到bug的case了

#### NDN.p4

- 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》

  - 11.4. Named Data Networking

- NDN.p4 [354] implements NDN without caching for P4. 

  - 包分类为两种，一种interest包 一种为data包

- 部分逻辑实现在控制平面，因此需要添加CPI约束才能够check

- spec1：除非之前接收过用户对这个name的interest包 才会对data包转发 否则不转发

  - ```
    //#LTLVariables: a:int
    //#LTLProperty: []((AP(pit_r[a] == 0) ==> (AP(name_metadata.name_hash == a && meta.flow_metadata.packetType == 0x06 && drop) W AP(name_metadata.name_hash == a && flow_metadata.packetType == 0x05) )))
    //#LTLFairness: [](AP(name_metadata.components != 0))
    ```

- spec2：在接收并转发data包后 马上接收下一个相同name的data会drop这个data包（因为clear pit了）

  - ```
    //#LTLVariables: a:int
    //#LTLProperty: [](AP(name_metadata.name_hash == a && meta.flow_metadata.packetType == 0x06 && !drop) ==> X(AP(name_metadata.name_hash == a && meta.flow_metadata.packetType == 0x06 ==> drop)))
    //#LTLFairness: [](AP(name_metadata.components != 0))
    ```



#### P4xos

- P4xos: Consensus as a Network Service

- 14.2.2. In-Network Consensus

- https://github.com/P4xos/P4xos

- Dang et al. [488, 489] describe a P4 implementation of Paxos, a protocol that solves consensus for distributed algorithms in a network of unreliable processors based on information exchange between switches. This work contains a detailed description of a complex P4 implementation. The authors explain all components, provide code snippets, and discuss their design choices.

- acceptor

  - 不会接受历史的propose

    - ```
      //#LTLVariables: a:int
      //#LTLProperty: [](AP(hdr.paxos.inst == a && !drop ==> (hdr.paxos.rnd >= meta.paxos_metadata.round)))
      //#LTLFairness: [](AP(valid(hdr.ipv4)) && valid(hdr.paxos) )
      ```

  - 除非accept新的value，否则只会vote接受的value

    - ```
      //#LTLVariables: a:int, b:int
      //#LTLProperty: [](AP(hdr.paxos.inst == a && hdr.paxos.msgtype == PAXOS_2B && hdr.paxos.paxosval == b ==> (hdr.paxos.msgtype == PAXOS_1B && hdr.paxos.inst == a ==> hdr.paxos.paxosval == b W hdr.paxos.msgtype == PAXOS_2B)))
      //#LTLFairness: [](AP(valid(hdr.ipv4)) && valid(hdr.paxos) )
      ```

- leader

  - The leader must perform the following: write the current instance number and an initial round number into the message header; increment the instance number for the next invocation; store the value of the new instance number; and broadcast the packet to acceptors.
    - 下一次发出的message的inst字段为此次发出message的inst字段+1
    - 但是用了extern 可惜

- Learner

  - Learners receive votes from the acceptors, and “deliver” a value if a majority of votes are the same (i.e., there is a quorum).

    - 除非达到majority，否则不会转发（deliver）

    - ```
      //#LTLVariables: a:int
      //#LTLProperty: [](AP(hdr.paxos.inst == a && drop) W AP(hdr.paxos.inst == a && (meta.paxos_metadata.ack_acceptors == 6 || meta.paxos_metadata.ack_acceptors == 5 || meta.paxos_metadata.ack_acceptors == 3)))
      //#LTLFairness: [](AP(valid(hdr.ipv4)) && valid(hdr.paxos) )
      ```

  - 似乎还是可以基于learner tbl写一个性质？？

- spec：通过源码可知，如果前一个packet输出的msgtype为PAXOS_2B，且当前packet输出的type为PAXOS_1B，且两个数据包的hdr.paxos.inst相同：则当前数据包的hdr.paxos.vrnd应该是上一个数据包的hdr.paxos.rnd

  - 可以认为前一数据包的结果会影响后一数据包的值

