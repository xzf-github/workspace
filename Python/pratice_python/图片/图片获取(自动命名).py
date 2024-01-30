import requests
from bs4 import BeautifulSoup #将前端的源代码序列化 成一个固定的格式(解析代码，方便快速提取网页数据）
wz_hero_url="https://pvp.qq.com/web201605/herolist.shtml"
wz_item_url="https://pvp.qq.com/web201605/item.shtml"
lol_hero_url="https://www.ali213.net/zt/LOL/wiki/lolyx/"
lol_item_url="https://www.ali213.net/zt/LOL/wiki/lolzb/#detailin"
url=wz_item_url
respond = requests.get(url)
respond.encoding = respond.apparent_encoding
html_str = respond.text
#print(html_str)
#解析网页源代码
soup = BeautifulSoup(html_str,"html.parser")
wz_hero_selector = "body > div.wrapper > div > div > div.herolist-box > div.herolist-content > ul > li > a > img"
wz_item_selector = "#Jlist-details > li > a > img"
lol_hero_selector = "#content-hero-list > a:nth-child(1) > span.hero-pic > img"
arr = soup.select(wz_item_selector)
#print(arr)
for img in arr:
    url="https:"+img["src"]
    #print(url)
    #print(img)
    respond = requests.get(url)
    content = respond.content  # 发起请求，获取响应数据
    file = open("wz_item_img/" + img["alt"] + ".jpg", "wb")  # 打开一个本地图片 并且使用写入模式,图片是二进制文件所以使用b(即binary)
    file.write(content)  # 将从链接中获取的数据写入到本地文件
    file.close()  # 关闭文件资源