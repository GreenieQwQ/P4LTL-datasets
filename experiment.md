# 确认各个Case的最终版本：

## Bfs

- noRing_global-refine.p4ltl（成立，非时序，单包）
- noRing_weakuntil-refine.p4ltl（成立，时序，until）

## Blink

- reroute-bv.p4ltl（成立，时序，next）
  - 原本证明过非时序reroute-refine2-bv.p4ltl（大概2000多秒，将表达式替换为一个之后较快），改为时序

## Codel

- forward_weakuntil.p4ltl（成立，时序，next、until）
  - 新增，替换了oneState
- drop_multiStates.p4ltl（成立，时序，next、until）

## Dfs

- noRing_global-refine.p4ltl（成立，非时序，单包）
- noRing_weakuntil-refine.p4ltl（成立，时序，until）

## NDN

- nextDataDrop-refine2.p4ltl（成立，时序，next）
- dataFoward-refine.p4ltl（成立，时序，until）

## P4NIS

- disorder-refine.p4ltl（成立，时序，future）
  - 可能需要改为无限经常

## P4sp

- resilience_next-refine.p4ltl（成立，时序，next）
- resilience_reset-refine.p4ltl（成立，时序，next）
- resilience_weakuntil-refine.p4ltl（成立，时序，until）
- timestamp.p4ltl（成立，时序，until）

## P4xos

- acceptor#agreement.p4ltl（成立，时序，until）
- acceptor#drop_past.p4ltl（成立，非时序，单包）
- learner#dropUntilMajor-refine2.p4ltl（成立，时序，until）