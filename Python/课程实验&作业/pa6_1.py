# -*- coding: utf-8 -*-
# @Time : 2023/11/29 11:22
# @Author : 023321712228徐泽枫
# @File : pa6_1.py
import sqlite3
#创建数据库
con = sqlite3.connect(r"d:/bookdb.db")
#创建表,设置主码
con.execute("create table student (sid primary key, name)")
students = [("021", "张三"), ('022', "零四"), ("023", "赵武"), ("024", "沈阳")]
con = sqlite3.connect(r"d:/bookdb.db")
#插入数据
con.execute("insert into student(sid,name) values ('023321712228','徐泽枫')")
con.execute("insert into student(sid, name) values ('020', '广东')")
con.execute("insert into student(sid, name) values (?, ?)", ('001', '北京'))
con.executemany("insert into student(sid, name) values (?, ?)", students)
#更新数据
con.execute("update student set name=? where sid=?", ('广州', '020'))
#删除数据
n = con.execute("delete from student where sid=?", ("024",))
print('删除了', n.rowcount, '行记录')
#查询数据并输出
for row in con.execute('SELECT * FROM student ORDER BY sid'):
    print(row)

con.commit()
con.close()

'''
1、编写程序，创建数据库和表。
创建数据库bookdb，并在其中创建表student，
表中包含两个列：sid和name，其中sid为主码（primary key），
然后在表记录进行插入、更新、删除、查询操作。
'''