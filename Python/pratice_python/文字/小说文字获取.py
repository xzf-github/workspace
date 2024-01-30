import requests
from bs4 import BeautifulSoup #将前端的源代码序列化 成一个固定的格式(解析代码，方便快速提取网页数据）

#文件地址 文件名称 文件的所在目录 函数封装功能：下载文件
def download(fileurl,filename,filedir):
    #通过地址读取文件的文本
    respond = requests.get(fileurl)
    content = respond.content  # 发起请求，获取响应数据
    #写入到本地文件
    file = open(filedir+filename,"w")
    file.write(content)  # 将从链接中获取的数据写入到本地文件
    file.close()  # 关闭文件资源

feilu_url="https://b.faloo.com/1375564.html"
url=feilu_url
respond = requests.get(url)
respond.encoding = respond.apparent_encoding
html_str = respond.text
#print(html_str)
#解析网页源代码
soup = BeautifulSoup(html_str,"html.parser")
#print(soup)
#飞卢小说网：综武，因为嘴贱，就拿我当反派？  文本内容
selector1="#center > div > div.WallPageBody > div.noveContent.readline"
#飞卢小说网：综武，因为嘴贱，就拿我当反派？  章节目录
selector2="#mulu > div > div > div "
arr = soup.select("#mulu > div > div > div ")
#print(arr)
for head in arr:
    name = head.select("a")[0].string
    print(name)
    file = open("飞卢小说/" + name + ".txt", "w")  # 打开一个本地图片 并且使用写入模式,图片是二进制文件所以使用b(即binary)
    file.close()  # 关闭文件资源
