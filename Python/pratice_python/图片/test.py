import requests

url = "https://game.gtimg.cn/images/yxzj/img201606/heroimg/540/540.jpg"
respond = requests.get(url)
content = respond.content
print(content)
file = open("1.png","wb")#打开一个本地图片 并且使用写入模式,图片是二进制文件所以使用b(即binary)
file.write(content)#将从链接中获取的数据写入到本地文件
file.close()#关闭文件资源