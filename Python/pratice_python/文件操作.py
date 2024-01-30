'''
1、打开文件
open("文件地址","文件的打开模式",enconding="编码模式")
在python语言中，将文件分为两类
文本文件 例如: .txt
二进制文件 例如: .mp3 .mp4 .jpg .png等
文件操作
读取数据 r  文件不存在则报错
写入数据 w  文件存在则覆盖原有内容，不存在则按照名称新建文件并添加内容
在文件末尾添加数据 a 文件存在则末尾追加内容，不存在则按名称新建文件并添加内容
'''
# 文本文件操作
# file = open("1.txt","r",encoding="utf-8")
# s = file.read()
# print(s)

# file = open("1.txt","w",encoding="utf-8")
# file.write("天不生我The Shy，LPL万古如长夜！")
# file.close()

# file = open("1.txt","a",encoding="utf-8")
# file.write("\n")
# file.write("我是LOL史上最高的山，最长的河。--Faker\n")
# file.write("纵然通向胜利的路有千万条，但所有路途的终点，都通向我。--Faker")
# file.close()

# file = open("1.txt","r",encoding="utf-8")
# i=file.read()
# print(i)
# file.close()


# 二进制文件操作
file = open("时间刺客.png","rb")
s = file.read()
print(s)
file.close()
file2 = open("时间刺客(0).png","wb")
file2.write(s)
file2.close()