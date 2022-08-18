## P4tutorial

- L3 forwarding
  - spec: 当包不被drop，ttl自减（需要考虑ttl == 0的边界条件）
- Tunnel forwarding
  - spec: 当包不被drop，若ip protocol为iptunnel，则ttl保持原样
  - spec: 当包不被drop，ttl自减
    - 注：应当不满足
- ecn
  - spec: 当包不被drop，并且ipv4.ecn域为1或2，则ipv4.ecn被置位为元数据
- Multi-Hop Route Inspection (MRI)
  - 涉及header stack，暂不描述
- multicast
  - 涉及multicast原语，P4Boogie似乎暂不支持（？），暂不描述
- P4 Calculator
  - 将add计算的spec形式化了一下——op == '+'，且不drop，则发出的包的res域为oprand域的相加
- Load Balancing
  - 因为涉及外部库的调用不清楚P4Boogie能不能编译
  - 并且查看源码发现balance涉及控制平面 比较难编写性质
- QOS
  - spec：当ipv4有效时，若ipv4.protocol为UDP，则qos置位为46，若ipv4.protocol为TCP，则qos置位为44
- Source routing
  - 涉及header stack，（主要是语句`standard_metadata.egress_spec = (bit<9>)hdr.srcRoutes[0].port;`），不清楚P4Boogie的表示方法，暂不描述
- Basic stateful firewall
  - spec:
    - property: 外网发送到内网的包一直被drop Until 存在相同ip的、不被drop、syn=1的从内网发送到外网的包
    - fairness: 存在不被drop、syn=1的从内网发送到外网的包
- Link Monitoring
  - 涉及`hdr.probe_data[0].port = (bit<8>)standard_metadata.egress_port;`使用header sstack的描述，需要参考P4Boogie的转化编写spec

