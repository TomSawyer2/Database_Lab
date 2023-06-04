import mysql.connector

course_name = input("请输入要查询的课程名称：")

# 连接数据库
cnx = mysql.connector.connect(
    user="root",
    password="your_password",
    host="localhost",
    database="lab_1",
    auth_plugin="mysql_native_password",
)

# 查询课程信息
cursor = cnx.cursor()
query = "SELECT * FROM Course WHERE Cname=%s"
cursor.execute(query, (course_name,))
result = cursor.fetchall()

# 输出结果
for row in result:
    print(row)

# 关闭连接
cursor.close()
cnx.close()
