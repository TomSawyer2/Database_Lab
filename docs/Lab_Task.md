# 实验任务书

## 第一次实验实验任务书

学生选修课程表建立与数据查询，实现书本第三章所举例的学生-课程数据库，并完成书本3.4节上实现的所有查询，实验报告中需要包含代码（SQL语言实现）和运行结果截图（注明实验所用的环境）；对于实验结果分析；如有多种实现方法，做性能比较，分析速度不同的原因。

## 第二次实验实验任务书

1. 完成书本P128 第4、5、9题
2. 完成书本P269第1、2题

## 第三次实验实验任务书

### 汉诺塔问题

在一根柱子上从下往上按照大小顺序摞着n片黄金圆盘。把圆盘从下面开始按大小顺序重新摆放在另一根柱子上。并且规定，在小圆盘上不能放大圆盘，在三根柱子之间一次只能移动一个圆盘。如果考虑一下把n片金盘，由一根柱子上移到另一根柱子上，并且始终保持上小下大的顺序。题目要求：用SQL找出最少移动次数，并且给出一种移法。

### 老鼠吃奶酪问题

用数据库的方法找出从入口（左下角方格（0，0））经过迷宫到达出口（右上角方格（7，3））的所有路径。
要求1：只能走到它的上、右方向，且不能走重复路径。
要求2：避开方块（3，2）的陷阱。

### 触发器实现

用触发器与之前实现过的学生-课程数据库实现一个选课系统，要求完成下面三个触发器：

（1）	建立学生选课触发器

触发器设置：当向选课表SC表中插入数据时，检查该行的学号列在学生表中是否存在，课号在课表中是否存在；如有一项不成立，则不允许插入，系统给与错误提示。

（2）	建立添加学生触发器

触发器设置：已存在所对应学号的学生时，系统给与错误提示。

（3）	建立老师填写成绩触发器

触发器设置：成绩取值不在0~100之间，系统给与错误提示。

要求将**合法插入**和**非法插入**的运行结果都截图在报告中。
