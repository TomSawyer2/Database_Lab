# 数据库及应用实践实验引导文档

## 第一次实验

### 创建数据表

```sql
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `Course`;
CREATE TABLE `Course`  (
  `Cno` int(0) NOT NULL COMMENT '课程号',
  `Cname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名',
  `Cpno` int(0) NULL DEFAULT NULL COMMENT '先行课',
  `Ccredit` int(0) NULL DEFAULT NULL COMMENT '学分'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `Course` VALUES (1, '数据库', 5, 4);
INSERT INTO `Course` VALUES (2, '数学', NULL, 2);
INSERT INTO `Course` VALUES (3, '信息系统', 1, 4);
INSERT INTO `Course` VALUES (4, '操作系统', 6, 3);
INSERT INTO `Course` VALUES (5, '数据结构', 7, 4);
INSERT INTO `Course` VALUES (6, '数据处理', NULL, 2);
INSERT INTO `Course` VALUES (7, 'PASCAL语言', 6, 4);

DROP TABLE IF EXISTS `SC`;
CREATE TABLE `SC`  (
  `Sno` int(0) NOT NULL COMMENT '学号',
  `Cno` int(0) NOT NULL COMMENT '课程号',
  `Grade` int(0) NULL DEFAULT NULL COMMENT '成绩'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `SC` VALUES (201215121, 1, 92);
INSERT INTO `SC` VALUES (201215121, 2, 85);
INSERT INTO `SC` VALUES (201215121, 3, 88);
INSERT INTO `SC` VALUES (201215122, 2, 90);
INSERT INTO `SC` VALUES (201215122, 3, 80);

DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student`  (
  `Sno` int(0) NOT NULL COMMENT '学号',
  `Sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `Ssex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `Sage` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `Sdept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在系'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `Student` VALUES (201215121, '李勇', '男', 20, 'CS');
INSERT INTO `Student` VALUES (201215122, '刘晨', '女', 19, 'CS');
INSERT INTO `Student` VALUES (201215123, '王敏', '女', 18, 'MA');
INSERT INTO `Student` VALUES (201215125, '张立', '男', 19, 'IS');

SET FOREIGN_KEY_CHECKS = 1;
```

## 第二次实验

### P128 4

#### 创建第二章习题六的四个数据表

```sql
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for j
-- ----------------------------
DROP TABLE IF EXISTS `j`;
CREATE TABLE `j`  (
  `JNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `JNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`JNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of j
-- ----------------------------
INSERT INTO `j` VALUES ('J1', '三建', '北京');
INSERT INTO `j` VALUES ('J2', '一汽', '长春');
INSERT INTO `j` VALUES ('J3', '弹簧厂', '天津');
INSERT INTO `j` VALUES ('J4', '造船厂', '天津');
INSERT INTO `j` VALUES ('J5', '机车厂', '唐山');
INSERT INTO `j` VALUES ('J6', '无线电厂', '常州');
INSERT INTO `j` VALUES ('J7', '半导体厂', '南京');

-- ----------------------------
-- Table structure for p
-- ----------------------------
DROP TABLE IF EXISTS `p`;
CREATE TABLE `p`  (
  `PNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `COLOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `WEIGHT` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`PNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p
-- ----------------------------
INSERT INTO `p` VALUES ('P1', '螺母', '红', 12);
INSERT INTO `p` VALUES ('P2', '螺栓', '绿', 17);
INSERT INTO `p` VALUES ('P3', '螺丝刀', '蓝', 14);
INSERT INTO `p` VALUES ('P4', '螺丝刀', '红', 14);
INSERT INTO `p` VALUES ('P5', '凸轮', '蓝', 40);
INSERT INTO `p` VALUES ('P6', '齿轮', '红', 30);

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s`  (
  `SNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `STATUS` int(0) NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES ('S1', '精益', 20, '天津');
INSERT INTO `s` VALUES ('S2', '盛锡', 10, '北京');
INSERT INTO `s` VALUES ('S3', '东方红', 30, '北京');
INSERT INTO `s` VALUES ('S4', '丰泰盛', 20, '天津');
INSERT INTO `s` VALUES ('S5', '为民', 30, '上海');

-- ----------------------------
-- Table structure for spj
-- ----------------------------
DROP TABLE IF EXISTS `spj`;
CREATE TABLE `spj`  (
  `SNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `QTY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spj
-- ----------------------------
INSERT INTO `spj` VALUES ('S1', 'P1', 'J1', '200');
INSERT INTO `spj` VALUES ('S1', 'P1', 'J3', '100');
INSERT INTO `spj` VALUES ('S1', 'P1', 'J4', '700');
INSERT INTO `spj` VALUES ('S1', 'P2', 'J2', '100');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J1', '400');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J2', '200');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J4', '500');
INSERT INTO `spj` VALUES ('S2', 'P3', 'J5', '400');
INSERT INTO `spj` VALUES ('S2', 'P5', 'J1', '400');
INSERT INTO `spj` VALUES ('S2', 'P5', 'J2', '100');
INSERT INTO `spj` VALUES ('S3', 'P1', 'J1', '200');
INSERT INTO `spj` VALUES ('S3', 'P3', 'J1', '200');
INSERT INTO `spj` VALUES ('S4', 'P5', 'J1', '100');
INSERT INTO `spj` VALUES ('S4', 'P6', 'J3', '300');
INSERT INTO `spj` VALUES ('S4', 'P6', 'J4', '200');
INSERT INTO `spj` VALUES ('S5', 'P2', 'J4', '100');
INSERT INTO `spj` VALUES ('S5', 'P3', 'J1', '200');
INSERT INTO `spj` VALUES ('S5', 'P6', 'J2', '200');
INSERT INTO `spj` VALUES ('S5', 'P6', 'J4', '500');

SET FOREIGN_KEY_CHECKS = 1;
```

#### 完成第二章习题六的查询

1. 求供应工程 J1 零件的供应商号码 SNO

```sql
select SNO from SPJ where JNO = 'J1';
```

2. 求供应工程 J1 零件P1的供应商号码 SNO

```sql
select SNO from SPJ where JNO = 'J1' and PNO = 'P1';
```

3. 求供应工程 J1 零件为红色的供应商号码 SNO

```sql
select distinct SNO 
from SPJ 
where JNO = 'J1' and PNO in (select PNO from P where COLOR = '红');
```

4. 求没有使用天津供应商生产的红色零件的工程号 JNO

```sql
SELECT SPJ.JNO
FROM SPJ
JOIN P ON SPJ.PNO = P.PNO
JOIN S ON SPJ.SNO = S.SNO
WHERE SPJ.JNO NOT IN (
  SELECT SPJ.JNO
  FROM SPJ
  JOIN P ON SPJ.PNO = P.PNO
  JOIN S ON SPJ.SNO = S.SNO
  WHERE P.COLOR = '红' AND S.CITY = '天津'
  GROUP BY SPJ.JNO
)
GROUP BY SPJ.JNO
```

5. 求至少用了供应商 S1 所供应的全部零件的工程号 JNO
语句不保真，但理论上确实不应该查出结果

```sql
select JNO from SPJ where PNO in (
  select PNO from SPJ where SNO = 'S1'
) group by JNO having count(distinct PNO) = (
  select count(*) from SPJ where SNO = 'S1'
);
```

### P128 5

(1)

```sql
SELECT SNAME,CITY
FROM S;
```

(2)

```sql
SELECT PNAME,COLOR,WEIGHT 
FROM P;
```

(3)

```sql
SELECT JNO 
FROM SPJ 
WHERE SNO='S1';
```

(4)

```sql
select PNAME,QTY
from SPJ,P
where JNO='J2' and SPJ.PNO=P.PNO;
```

(5)

```sql
select distinct PNO
from S,SPJ
where CITY='上海' and SPJ.SNO=S.SNO;
```

(6)

```sql
select distinct JNAME
from S,J,SPJ
where S.CITY='上海' and S.SNO=SPJ.SNO and J.JNO=SPJ.JNO;
```

(7)

```sql
select distinct JNO
from J
where JNO not in 
(
    select JNO
    from S,SPJ
    where CITY='天津' and S.SNO=SPJ.SNO
);
```

(8)

```sql
UPDATE P 
SET COLOR='蓝' 
WHERE COLOR='红';
```

(9)

```sql
UPDATE  SPJ  
SET SNO='S3' 
WHERE SNO='S5' 
    AND JNO='J4' 
    AND PNO='P6';
```

(10)

```sql
DELETE FROM SPJ WHERE SNO='S2';

DELETE FROM S WHERE SNO='S2';
```

(11)

```sql
INSERT INTO SPJ VALUES ('S2','J6','P4',200);
```

### P128 9

#### 创建视图

```sql
CREATE VIEW VSP AS SELECT SNO,SPJ.PNO,QTY FROM SPJ,J
WHERE SPJ.JNO=J.JNO AND J.JNAME='三建';
```

(1)

```sql
SELECT PNO,QTY 
FROM VSP;
```

(2)

```sql
SELECT PNO,QTY
FROM VSP 
WHERE SNO='S1';
```

### P269 1

这题和下面一题用到的都是第一次实验创建的数据库，注意需要把课程Course表中的数学改成离散数学
同时，需要在电脑上配置Python运行环境
在命令行中安装依赖（如果有虚拟环境，需要在虚拟环境中安装）

```bash
pip install mysql
pip install mysql.connector
```

(1)

```python
import mysql.connector

course_name = input("请输入要查询的课程名称：")

# 连接数据库
db = mysql.connector.connect(
    user="root",
    password="密码",
    host="localhost",
    database="lab_1",
    auth_plugin="mysql_native_password",
)

# 查询课程信息
cursor = db.cursor()
query = ("SELECT * FROM Course WHERE Cname=%s")
cursor.execute(query, (course_name,))
result = cursor.fetchall()

# 输出结果
for row in result:
    print(row)

# 关闭连接
cursor.close()
db.close()
```

调用方式：

```bash
python script1.py
```

如果报错显示Authentication plugin 'caching_sha2_password' is not supported，需要在命令行中进入MySQL，并执行这条命令：`alter user 'root'@'localhost' identified with mysql_native_password by '密码';`

(2)

```python
import mysql.connector

# 连接数据库
db = mysql.connector.connect(
    user="root",
    password="密码",
    host="localhost",
    database="lab_1",
    auth_plugin="mysql_native_password",
)
# 获取用户输入的课程名
Cname = input("请输入要查询的课程名称：")

# 查询选修指定课程的选课信息
cursor = db.cursor()
sql = "SELECT Student.Sno, Sname, Ssex, Sage, Sdept, Grade FROM Student, SC, Course WHERE Student.Sno=SC.Sno AND SC.Cno=Course.Cno AND Cname=%s"
cursor.execute(sql, (Cname,))
results = cursor.fetchall()

# 打印查询结果
if len(results) == 0:
    print("未找到选修该课程的学生信息。")
else:
    print("选修该课程的学生信息如下：")
    for row in results:
        print(
            "学号：%d，姓名：%s，性别：%s，年龄：%d，所在系：%s，成绩：%d"
            % (row[0], row[1], row[2], row[3], row[4], row[5])
        )

    # 修改指定记录的成绩字段
    Sno = int(input("请输入要修改成绩的学生的学号："))
    Grade = int(input("请输入修改后的成绩："))
    sql = "UPDATE SC SET Grade=%s WHERE Sno=%s AND Cno=(SELECT Cno FROM Course WHERE Cname=%s)"
    cursor.execute(sql, (Grade, Sno, Cname))
    db.commit()
    print("成绩修改成功！")

# 关闭数据库连接
db.close()
```

调用方式：

```bash
python script2.py
```

### P269 2

(1)

```sql
DELIMITER //

CREATE PROCEDURE discrete_math_grade()
BEGIN
    DECLARE p_100 INT DEFAULT 0;
    DECLARE p_90 INT DEFAULT 0;
    DECLARE p_80 INT DEFAULT 0;
    DECLARE p_70 INT DEFAULT 0;
    DECLARE p_60 INT DEFAULT 0;
    DECLARE p_others INT DEFAULT 0;
    DECLARE p_grade INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR
        SELECT grade FROM SC WHERE cno = 
            (SELECT Cno FROM Course WHERE Cname='离散数学');
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO p_grade;
        IF done THEN
            LEAVE read_loop;
        END IF;
        IF(p_grade = 100) THEN
            SET p_100 = p_100 + 1;
        ELSEIF(p_grade >= 90) THEN
            SET p_90 = p_90 + 1;
        ELSEIF(p_grade >= 80) THEN
            SET p_80 = p_80 + 1;
        ELSEIF(p_grade >= 70) THEN
            SET p_70 = p_70 + 1;
        ELSEIF(p_grade >= 60) THEN
            SET p_60 = p_60 + 1;
        ELSE
            SET p_others = p_others + 1;
        END IF;
    END LOOP;
    CLOSE cur;
    SELECT '成绩为100的学生数目：', p_100;
    SELECT '成绩在90到99之间的学生数目：', p_90;
    SELECT '成绩在80到89之间的学生数目：', p_80;
    SELECT '成绩在70到79之间的学生数目：', p_70;
    SELECT '成绩在60到69之间的学生数目：', p_60;
    SELECT '成绩低于60的学生数目：', p_others;
END;

//
```

运行（先敲第一行，回车，再敲第二行）：

```sql
DELIMITER ;
CALL discrete_math_grade();
```

(2)

```sql
DELIMITER //
CREATE PROCEDURE avggrade(incname CHAR(40))
BEGIN
    SELECT AVG(Grade) FROM SC WHERE Cno = 
        (SELECT Cno FROM Course WHERE Cname = incname);
END
//
```

运行：

```sql
DELIMITER ;
CALL avggrade('离散数学');
```

(3)

```sql
DELIMITER //
CREATE PROCEDURE gradetype()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE scgrade INT;
    DECLARE score CHAR(1);
    DECLARE gradecursor CURSOR FOR SELECT grade FROM SC;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN gradecursor;
    read_loop: WHILE NOT done DO
        FETCH gradecursor INTO scgrade;
        IF NOT done THEN
            IF(scgrade >= 90 AND scgrade <= 100) THEN
                SET score = 'A';
            ELSEIF(scgrade >= 80) THEN
                SET score = 'B';
            ELSEIF(scgrade >= 70) THEN
                SET score = 'C';
            ELSEIF(scgrade >= 60) THEN
                SET score = 'D';
            ELSE
                SET score = 'E';
            END IF;
            SELECT CONCAT('Grade: ', scgrade, ' Score: ', score) AS result;
        END IF;
    END WHILE;
    CLOSE gradecursor;
END //
```

运行：

```sql
DELIMITER ;
CALL gradetype();
```

## 第三次实验

此次实验需要安装SQL Server配合TSQL语言使用
SQL Server安装：（免费Develop版即可）https://www.microsoft.com/zh-tw/sql-server/sql-server-downloads

### 汉诺塔问题（这题在MySQL写）

```sql
DROP PROCEDURE IF EXISTS hanoi;
DELIMITER //

CREATE PROCEDURE hanoi(n INT)
BEGIN
    DECLARE source VARCHAR(20) DEFAULT 'A';
    DECLARE target VARCHAR(20) DEFAULT 'C';
    DECLARE auxiliary VARCHAR(20) DEFAULT 'B';

    IF n > 0 THEN
        -- 将 n-1 个盘子从源柱子移动到辅助柱子
        CALL hanoi(n - 1);

        -- 将第 n 个盘子从源柱子移动到目标柱子
        SELECT CONCAT('将盘子', n, '从', source, '移动到', target) AS step;

        -- 将 n-1 个盘子从辅助柱子移动到目标柱子
        CALL hanoi(n - 1);
    END IF;
END//

DELIMITER ;
-- 开启递归限制
SET @@max_sp_recursion_depth = 10;
```

调用方式：

```sql
CALL hanoi(3);
```

如果报错递归深度不够，则输入以下命令，设置的变量名报错里有：

```sql
set @@max_sp_recursion_depth=255;
```

### 老鼠吃奶酪问题（这题在SQL Server写）

**注意：SQL Server与MySQL的交互方式不一样，SQL Server左侧的数字表示当前处于这一条命令的第几行，输入go并回车后，才会提交所有命令并执行，也就是说下方代码块输入后都需要输入go并回车使左侧行号变回1**

首先需要新建一张辅助表：

```sql
CREATE TABLE Maze (
    x INT,
    y INT,
    isTrap BIT
);
```

插入迷宫对应的数据：

```sql
INSERT INTO Maze (x, y, isTrap)
VALUES
    (0, 0, 0),
    (1, 0, 0),
    (2, 0, 0),
    (3, 0, 0),
    (4, 0, 0),
    (5, 0, 0),
    (6, 0, 0),
    (7, 0, 0),
    (0, 1, 0),
    (1, 1, 0),
    (2, 1, 0),
    (3, 1, 0),
    (4, 1, 0),
    (5, 1, 0),
    (6, 1, 0),
    (7, 1, 0),
    (0, 2, 0),
    (1, 2, 0),
    (2, 2, 0),
    (3, 2, 1),
    (4, 2, 0),
    (5, 2, 0),
    (6, 2, 0),
    (7, 2, 0),
    (0, 3, 0),
    (1, 3, 0),
    (2, 3, 0),
    (3, 3, 0),
    (4, 3, 0),
    (5, 3, 0),
    (6, 3, 0),
    (7, 3, 0);
```

创建过程：

```sql
CREATE PROCEDURE FindPaths
    @x INT,
    @y INT,
    @path VARCHAR(MAX)
AS
BEGIN
    -- 添加当前位置到路径
    SET @path = @path + '(' + CAST(@x AS VARCHAR) + ',' + CAST(@y AS VARCHAR) + ')';
    -- 到达出口（右上角）
    IF (@x = 7 AND @y = 3)
    BEGIN
        PRINT @path;
        RETURN;
    END;

    -- 向右移动
    DECLARE @nextX INT = @x + 1;
    DECLARE @nextY INT = @y;
    IF (@x < 7 AND NOT EXISTS (SELECT * FROM Maze WHERE x = @nextX AND y = @nextY AND isTrap = 1))
    BEGIN
        EXEC FindPaths @nextX, @nextY, @path; -- 递归调用时传递更新后的路径变量
    END;

    -- 向上移动
    SET @nextX = @x;
    SET @nextY = @y + 1;
    IF (@y < 3 AND NOT EXISTS (SELECT * FROM Maze WHERE x = @nextX AND y = @nextY AND isTrap = 1))
    BEGIN
        EXEC FindPaths @nextX, @nextY, @path; -- 递归调用时传递更新后的路径变量
    END;
END;
```

执行：

```sql
EXEC FindPaths 0, 0, '';
```

### 触发器实现选课系统（这题在MySQL写）

#### （1）建立学生选课触发器

```sql
DELIMITER //

CREATE TRIGGER `check_insert_SC`
BEFORE INSERT ON `SC`
FOR EACH ROW
BEGIN
  DECLARE student_count INT;
  DECLARE course_count INT;

  -- 检查学号是否存在于学生表中
  SELECT COUNT(*) INTO student_count FROM Student WHERE Sno = NEW.Sno;
  
  -- 检查课程号是否存在于课程表中
  SELECT COUNT(*) INTO course_count FROM Course WHERE Cno = NEW.Cno;
  
  IF student_count = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '学号不存在于学生表中';
  END IF;
  
  IF course_count = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '课程号不存在于课程表中';
  END IF;
  
END //

DELIMITER ;
```

测试用例1：

```sql
-- 满足学号和课号均存在
INSERT INTO SC VALUES (201215121, 1, 90);
```

测试用例2：

```sql
-- 满足学号存在但课号不存在
INSERT INTO SC VALUES (201215121, 10, 85);
```

测试用例3：

```sql
-- 满足学号不存在但课号存在
INSERT INTO SC VALUES (201215120, 1, 92);
```

#### （2）建立添加学生触发器

```sql
DELIMITER //

CREATE TRIGGER `check_insert_Student`
BEFORE INSERT ON `Student`
FOR EACH ROW
BEGIN
  DECLARE student_count INT;

  -- 检查学号是否已存在于学生表中
  SELECT COUNT(*) INTO student_count FROM Student WHERE Sno = NEW.Sno;

  IF student_count > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '学号已存在于学生表中';
  END IF;

END //

DELIMITER ;
```

测试用例1：

```sql
-- 满足学号不存在
INSERT INTO Student VALUES (201215124, '王明', '男', 21, 'CS');
```

测试用例2：

```sql
-- 满足学号已存在
INSERT INTO Student VALUES (201215121, '李勇', '男', 20, 'CS');
```

#### （3）建立老师填写成绩触发器

```sql
DELIMITER //

CREATE TRIGGER `check_insert_SC_Grade`
BEFORE INSERT ON `SC`
FOR EACH ROW
BEGIN
  IF NEW.Grade < 0 OR NEW.Grade > 100 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '成绩必须在0到100之间';
  END IF;
END //

DELIMITER ;
```

测试用例1：

```sql
-- 成绩在0到100之间
INSERT INTO SC VALUES (201215121, 1, 92);
```

测试用例2：

```sql
-- 成绩不在0到100之间
INSERT INTO SC VALUES (201215122, 2, 120);
```
