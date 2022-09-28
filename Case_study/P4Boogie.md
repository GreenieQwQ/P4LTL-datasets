## P4Boogie

### Functional

- Blink为有的reg没后缀（nh_avaibility_1），有的reg增加了_0后缀？（sw_sum），对于reg的命名规则是怎么样的？
  - 是否有一个统一的规则？
- p4sp:![image-20220920205957805](../../../../AppData/Roaming/Typora/typora-user-images/image-20220920205957805.png)
  - bit unsigned great than使用了小于
  - 不只是bugt bult也是错误的 需要改动
  - 并且是不是应该需要取模运算然后再比较？
- p4sp: 当进行broadcast时，drop并不会置位
  - ![image-20220920211942536](../../../../AppData/Roaming/Typora/typora-user-images/image-20220920211942536.png)
- p4sp: standard_metadata.ingress_global_timestamp
  - 没有bound 甚至可能为负数
  - 因为是模拟bit 是否需要所有都assume > 0？？
  - 并且似乎没有位数的bound
- p4nis: egress_spec和egress_port似乎没有同步

### Non-functional

- p4nis: 对于大量bit操作导致的超时
- 不能模拟clone