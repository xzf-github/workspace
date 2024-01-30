import requests
from bs4 import BeautifulSoup
title=""
def createfile(filename,filedir,text):
    file = open(filedir+filename,"w")
    file.write(text)  # 将从链接中获取的数据写入到本地文件
    file.close()  # 关闭文件资源

#处理网页需要登录的情况
#在发起请求的同时需要将登录的报文一起传递过去（与请求头部一起传递）
head = {
    # 模拟浏览器访问
    "Referer":"https://b.faloo.com/",
    "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31",
    "Cookie":"host4chongzhi=http%3a%2f%2fb.faloo.com%2f; Hm_lvt_6d308f6626f6d0864b6bb4f348f2b5e5=1704265782; nc_rela=1; novelrelative=1375564; favorates28=1375564%2C1; autobuychapters28=1375564%2C1; readline=1; fontFamily=1; fontsize=16; bgcolor=%23FFFFFE; vip_img_width=3; font_Color=666666; KeenFire=UMID=32766016&UserID=19971081890&Pwd=994fb2c7c7a72a32838197b801c950c8&Identity=web45294.9210407954&PhotoID=0&NickName=%e9%9d%92%e8%8a%b1%e6%9a%ae%e9%9b%a8; UU12345678=uuc=133487428929844204323801465; comment_reply=0; curr_url=https%3A//b.faloo.com/1375564.html; Hm_lpvt_6d308f6626f6d0864b6bb4f348f2b5e5=1704269416",

}
def gettext(url):#获取每个章节的文本内容
    respond = requests.get(url,headers=head) # 向指定网址发出请求，获取响应数据; 并设置头部信息
    respond.encoding = respond.apparent_encoding # 自动根据网址网页的编码设置数据的编码格式
    htmlstr = respond.text #获取该网页响应数据的文本内容
    #print(htmlstr)
    soup = BeautifulSoup(htmlstr,"html.parser") # 告诉beautisoup用 html.parser解释器来解析htmlstr这个字符串（该字符串包含需要解析的html内容）
    #print(soup)
    #根据select中的css选择器获取相应元素，其返回值是一个列表
    caption = soup.select("#center > div > div.WallPageBody > div.c_l_title > h1")[0].string[18:]
    #print(caption)
    text = soup.select("#center > div > div.WallPageBody > div.noveContent > p")
    txt=caption+'\n' #先给每章的内容写入章节名
    for i in range(len(text)):#然后遍历添加小说内容
        txt+=text[i].string+"\n"
    txt+="\n\n"
    file = open("飞卢小说/"+title+".txt","a",encoding="utf-8")
    file.write(txt)
    file.close()

feilu_url="https://b.faloo.com/1381919.html"
respond = requests.get(feilu_url)
respond.encoding=respond.apparent_encoding
htmlstr = respond.text
soup = BeautifulSoup(htmlstr,"html.parser")
urltext = soup.select("#mulu > div > div > div > a")
##center > div > div.WallPageBody > div.noveContent.readline
title = soup.select("#novelName")[0].string

for i in urltext:#获取每个章节的网址
    #print(i)
    url = "https:"+i["href"]
    #print(url)
    gettext(url)

