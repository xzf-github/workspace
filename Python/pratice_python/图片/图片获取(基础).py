import re
#1.通过网址获取网页源代码:
import requests
wz_hero_url="https://pvp.qq.com/web201605/herolist.shtml"
wz_item_url="https://pvp.qq.com/web201605/item.shtml"
lol_hero_url="https://lol.qq.com/guides/hero.shtml?ADTAG=cooperation.glzx.web"

url=wz_item_url
response = requests.get(url)#发起请求，获取响应数据
response.encoding=response.apparent_encoding#获取网页编码格式
#print(response) #检查网页响应状态
html_str = response.text#获取当前网页源代码
#print(html_str)
#//game.gtimg.cn/images/yxzj/img201606/heroimg/540/540.jpg  金蝉
#//game.gtimg.cn/images/yxzj/img201606/heroimg/134/134.jpg  达摩
#//game.gtimg.cn/images/yxzj/img201606/itemimg/1111.jpg 铁剑
#//game.gtimg.cn/images/yxzj/img201606/itemimg/1112.jpg 匕首
r="//game.gtimg.cn/images/yxzj/img201606/itemimg/.*?.jpg"
arr = re.findall(r,html_str)
#遍历结果 获取图片文件的网络地址 再通过网络地址将图片保存到本地
cnt=0
for i in arr:
    cnt=cnt+1
    i="https:"+i;
    respond = requests.get(i)
    content = respond.content#发起请求，获取响应数据
    #print(content)
    file = open("wz_item_img/"+str(cnt)+".png", "wb")  # 打开一个本地图片 并且使用写入模式,图片是二进制文件所以使用b(即binary)
    file.write(content)  #将从链接中获取的数据写入到本地文件
    file.close()  # 关闭文件资源