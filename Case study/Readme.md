## Temporal cases

### Description

This dataset contains P4 codes/specifications that describe packet properties that involve more than one time step.

### Details

- P4NIS
  - 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
    - 13.5-Connection Security-P4NIS [476]

  - spec：包会被均匀地分布至端口1、2、3

- CoDel
  - 《A Survey on Data Plane Programming with P4: Fundamentals, Advances, and Applied Research》
  - 10.6-Active Queue Management (AQM) -CoDel[314]
  - spec1:  As long as the queuing delay is shorter than the target parameter, no packets are dropped.  If the queuing delay exceeds the target by a value that is at least as large as the interval, a packet is dropped.
    - `meta.codel.state_dropping == 0 && !(standard_metadata.deq_timedelta < SOJOURN_TARGET) && meta.codel.time_now >= meta.codel.drop_time => drop`
  - spec2: This procedure is repeated until the queuing delay is under the target threshold again.
    - 这个性质“看上去”涉及多个时间步的性质，且适合使用until进行描述——第一印象使用Property`(meta.codel.queue_id = a && meta.codel.time_now >= meta.codel.drop_next ==> drop) U (meta.codel.queue_id = a && standard_metadata.deq_timedelta < SOJOURN_TARGET)`描述，但是这个formulate的方法应该是**错误的**
      - 因为这个spec**仅在drop state成立**，并不适用于整个trace
    - 现在并没有找到一个好的方法来描述这个until的性质，spec2现在的性质是**错误描述的版本**
  - 经调研源码，**Codel的功能基本实现在数据平面 仅设置drop时长需要控制平面的参与 是一个比较典型的stateful数据平面**
    - 处理包的流程大概是这样的：
      - 首先使用寄存器记录上一个包处理的情形，在上一个包处理的时候，就已经计算好了这个包的最迟接收时间——这个接受时间是一个固定值，为`timenow + CONSTANT`（因为使用寄存器存储，天然地可以做到每个port独立计算时间）
      - 初始状态不为drop状态：
        - 此时若排队的时间小于阈值，则刷新drop time，不对包进行drop
        - 否则排队时间过长，此时判断包是否到达最迟接收时间，若到达，则丢弃这个包，进入drop state，并且存储进入寄存器，下次处理就从drop状态开始，并且查询控制平面表项，控制平面由用户根据drop状态drop的数目计算下一个包的最迟接受时间
      - drop状态：
        - 若此时排队的时间小于阈值，则刷新drop time，退出drop状态，这个包正常转发
        - 否则判断是否到达下一个包的最迟接受时间，若未到达则转发，否则丢弃，增加计数器，查询表项，依据drop cnt计算下一个包的最迟接收时间
