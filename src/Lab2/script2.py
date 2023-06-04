import mysql.connector

# 连接数据库
db = mysql.connector.connect(
    user="root",
    password="your_password",
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
