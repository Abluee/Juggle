---
title: 变量
description: 变量是流程设计中数据流转的纽带，变量支持全流程跨节点的流转，支持变量表达式。
keywords:
  - 流程变量
  - 变量表达式
  - 条件表达式
  - 变量引擎
createTime: 2024/10/18 15:09:38
permalink: /docs/guide/user/design/variable/
---

# 变量

变量是整个流程设计中数据流转的纽带，不同变量或变量与参数的相互赋值是根据数据类型来决定的，同一种数据类型的变量和参数之间才能相互赋值传递，变量的[数据类型](/docs/guide/user/data-type-info/)跟方法的出入参类型是一致的，变量主要分为三类，入参变量，出参变量，中间变量，详细介绍如下：

### 1.入参变量

入参变量是根据流程的入参系统自动创建的变量，该变量不能在变量管理中修改，只能通过修改流程的入参来间接修改变量。入参变量能作为流程中任何方法节点的入参赋值，也可以作为判断节点的判断条件。

### 2.出参变量

出参变量是根据流程的出参系统自动创建的变量，该变量不能在变量管理中修改，只能通过修改流程的出参来间接修改变量。出参变量能作为流程中任何方法节点的出参赋值，但是出参变量不能作为判断节点的判断条件使用。

### 3.中间变量

中间变量是有用户自己定义的，主要用于流程设计中流程数据使用，可用于方法节点的出入参赋值，也可以用户判断节点的判断条件使用。