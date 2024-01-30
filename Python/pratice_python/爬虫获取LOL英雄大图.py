# 导入json模块，用于处理JSON数据
import json
# 导入requests模块，用于发起HTTP请求
import requests

# 定义一个字典，存储请求头信息
head = {
    "Referer": "https://lol.qq.com/",  # 请求的来源地址
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0"
    # 伪装成浏览器发起请求
}


# 定义一个函数，用于下载文件
def download(fileUrl, fileName, fileDir):
    # 使用requests模块发起GET请求，传入请求头
    resp = requests.get(fileUrl, headers=head)
    # 获取响应内容
    con = resp.content
    # 打开文件，准备写入内容
    file = open(fileDir + fileName, "wb")
    # 将响应内容写入文件
    file.write(con)
    # 关闭文件
    file.close()


# 定义一个URL，用于获取英雄列表的JavaScript文件
url = "https://game.gtimg.cn/images/lol/act/img/js/heroList/hero_list.js"
# 发起GET请求，获取响应
resp = requests.get(url, headers=head)
# 设置响应内容的编码方式，这里使用apparent_encoding来获取最合适的编码方式
resp.encoding = resp.apparent_encoding
# 将响应内容转换为字符串格式
jsonStr = resp.text
# 使用json模块将字符串格式的JSON数据转换为Python字典格式的数据
jsonData = json.loads(jsonStr)['hero']

# 遍历英雄数据列表
for hero in jsonData:
    # 获取英雄的实例ID
    id = hero["instance_id"]
    # 根据实例ID构造图片的URL
    url = ("https://game.gtimg.cn/images/lol/act/img/skin/big_" + id + ".jpg")
    # 调用download函数下载图片，并指定文件名和保存路径
    download(url, hero["name"] + " " + hero["title"] + ".jpg", "lol_hero_img/")