## Spec

- Codel
  - drop_mytistates里面的自由变量为a:int
    - 应当替换为bv9
- Ndn
  - dataForward-refine的自由变量为a:int
    - 应当替换为bv16
    - `@name(".pit_r") register<bit<8>, bit<16>>(32w65536) pit_r;`
      - 32w只是为了方便表示16位的全1
  - next-data同理
- P4NIS
  - 在experiment.md中少了no_permantxxx.p4ltl的规约？
    - 然而在overleaf中是有测试的记录
    - 测试了能够被证明
      - 这个规约是`[]<>p ==> ![](p => q)`
        - 相比单步性质还是比较复杂的（？）
  - disorder确实应该改成无限经常 重测改动了一下
    - 结果和预期相符 能够被证明
- P4sp
  - time规约自由变量是int
    - 应该改成bv48
    - 结果和预期相符 能够被证明
  - next的规约应该accpeted改成1
    - “出现到了阈值的包后 后续转发即使小于阈值**也可以通过副接口转发**”
      - 这时候性质不满足 返回反例 这是符合预期的 因为P4sp确实没有实现下面`primary`寄存器相关的逻辑
  - ![xSvJG4.png](https://s1.ax1x.com/2022/09/17/xSvJG4.png)

- Paxos
  - 三个规约的自由变量都应当改成bv32

## 自由变量的翻译

- learner性质的验证
  - 将int改动为bv32进行验证，翻译的`_p4ltl_free_a`和int翻译的一样没有进行限定？

- 论文：自由变量似乎也可以说一下增加一下字数（？）
  - 语言
  - 实现

## 总结

- refine性质：
  - p4ltl有些规约没有添加自由变量bv，改动重新测试和原先结果基本相同
    - 除去ndn超时 但是int本身也超时
      - ndn4的`nextDataDrop-refine2`性质验证1h超时
        - 不过可能是机器原因 师兄的机器重测一下如果能够验证应该就没有问题
  - P4NIS的reorder改成了无限经常
    - 重新测试能够验证
- 自由变量bv的翻译似乎存在问题？查看翻译的boogie文件，目前是直接转化为int来进行翻译的，并没有bound
  - 应该在进入main循环前（仅执行一次）assume + havoc一下保证范围？
    - 虽然理论上似乎不会影响结果 毕竟int返回更大都能够证明（？）
      - 但是不确定实际上会不会影响结果 因此可能需要加上上面的功能后对含有自由变量的用例重新测试
  - 师兄觉得这部分的翻译实现是否可以放进论文中说明？水字数 + 因为Blink的spec也需要自由变量
    - 可以在P4LTL encoding的说明部分增加（？）（参考smartpulse论文）
- 相比Overleaf表格的统计 `experiment.md`的记录少了一个P4NIS的性质，多了一个time的性质
  - P4NIS的性质是`[]<>p ==> ![](p => q)`的形式 应该不是很平凡可以作为样例（？）
  - P4sp的time性质测试符合预期
- 重新整理了一下文件
  - log文件夹是我这次测试的log
    - log全部放在一个文件夹内可能比较好整理一些（？）
  - 我们最终需要测试的spec不动 “中间spec”都丢到了`experimental spec`文件夹内了

---

- 上面文字可能比较多 再精简一下233
- 想问一下师兄
  - （1）自由变量实现是否存在问题 如果有可能需要重新测试一下（直接调用`python test.py`这一`wrapper`直接可以全部测试）；
    - 以及测试的log似乎单独开一个文件夹可能文件整理比较方便（？）——`wrapper`是直接在根文件夹下开了一个log文件夹全部将记录丢到那里面了
  - （2）论文的表格记录和`experiment.md`似乎有一些不一致 + 去掉dfs/bfs两个global性质，加上time的性质确实不错；
  - （3）论文加上自由变量的表述和实现怎么样？
  - （4）Ndn4的`nextDataDrop-refine2`重新确认一下是否超时
- 这次改动后的数据集可以见于P4LTL dataset的`check`分支

