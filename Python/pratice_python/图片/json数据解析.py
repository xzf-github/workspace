#json数据解析
'''
网页加载的同时显示图片， 而新增图片是后期使用异步提交所显示的
'''
import requests
import json
#文件地址 文件名称 文件的所在目录 函数封装功能：下载文件
def download(fileurl,filename,filedir):
    #通过地址读取文件的二进制数据
    respond = requests.get(fileurl)
    content = respond.content  # 发起请求，获取响应数据
    #写入到本地文件
    file = open(filedir+filename,"wb")
    file.write(content)  # 将从链接中获取的数据写入到本地文件
    file.close()  # 关闭文件资源

wz_hero_url="https://pvp.qq.com/web201605/herolist.shtml"
wz_heroicon_url = "https://game.gtimg.cn/images/yxzj/img201606/heroimg/"
#wz_bkgd_url = 'https://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/563/563-bigskin-1.jpg'
wz_hero_bkgd_url = 'https://game.gtimg.cn/images/yxzj/img201606/skin/hero-info/'
wz_item_url="https://pvp.qq.com/web201605/item.shtml"
lol_hero_url="https://www.ali213.net/zt/LOL/wiki/lolyx/"
lol_hero_bkgd_url= "http://img1.ali213.net/glpic/upload/20201127/859484AE.jpg"
lol_item_url="https://www.ali213.net/zt/LOL/wiki/lolzb/#detailin"
wz_hero_json="https://pvp.qq.com/web201605/js/herolist.json"

html_url=wz_hero_json
respond = requests.get(html_url) # 发起请求，获取响应数据
respond.encoding = respond.apparent_encoding # 设置编码格式
jsonStr = respond.text # 获取本网页的文本信息

wz_hero_selector = "body > div.wrapper > div > div > div.herolist-box > div.herolist-content > ul > li > a > img"
wz_item_selector = "#Jlist-details > li > a > img"
lol_hero_selector = "#content-hero-list > a:nth-child(1) > span.hero-pic > img"
#print(jsonStr)
#将json字符串转换为json对象
jsonData = json.loads(jsonStr)

#遍历json对象内容
for item in jsonData:
    id=str(item["ename"])
    fileurl=wz_heroicon_url+id+"/"+id+".jpg"
    #print(url)
    filedir = "wz_hero_img/"
    filename = item["cname"]+".jpg"
    download(fileurl,filename,filedir)

    # respond = requests.get(url)
    # content = respond.content  # 发起请求，获取响应数据
    # #print(content)
    # file = open("wz_hero_img/" + item["cname"] + ".jpg", "wb")  # 打开一个本地图片 并且使用写入模式,图片是二进制文件所以使用b(即binary)
    # file.write(content)  # 将从链接中获取的数据写入到本地文件
    # file.close()  # 关闭文件资源

