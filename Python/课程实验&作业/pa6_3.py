'''
3、编写程序，
采用Python标准库urllib批量爬取中国工程院院士
（http://www.cae.cn/cae/html/main/col48/column_48_1.html）信息，
新建文件夹introduce，把每位院士的文字介绍和照片保存到以该院士命名的文本和图片文件中。
'''
# -*- coding: utf-8 -*-
# @Time : 2023/11/29 12:24
# @Author : 023321712228徐泽枫
# @File : pa6_3.py
import os.path
import requests
import re
from urllib.request import urlopen
dstDir = 'Yuanshi'
if not os.path.isdir(dstDir):
    os.mkdir(dstDir)

url = 'http://www.cae.cn/cae/html/main/col48/column_48_1.html'
respond = requests.get(url)
respond.encoding = 'utf-8'
# 避免http连接太多没有关闭导致连接超时
requests.adapters.DEFAULT_RETRIES = 5  # 增加重连次数
s = requests.session()
s.keep_alive = False  # 关闭多余连接
s.get(url)

every_num = re.findall('<a href="/cae/html/main/colys/(\d+).html" target="_blank">', respond.text)
count = 1

for man in every_num[:1000]:
    man_url = 'http://www.cae.cn/cae/html/main/colys/{}.html'.format(man)
    man_respond = requests.get(man_url)
    man_respond.encoding = 'utf-8'

    text1 = re.findall('<div class="intro">(.*?)</div>', man_respond.text, re.S)
    text2 = re.sub(r'<p>|&ensp;|&nbsp;|</p>', '', text1[0]).strip()

    # print(text2)
    file_name = re.findall('<div class="right_md_name">(.*?)</div>', man_respond.text)[0]
    file_name = os.path.join(dstDir, file_name)
    with open(file_name + '.txt', mode='a+', encoding="utf-8") as f:
        f.write('{}. '.format(count) + text2 + '\n')
        count += 1

    photo = r'<img src="/cae/admin/upload/img/(.+)" style='
    result = re.findall(photo, man_respond.text, re.I)

    if result:
        picurl = r'http://www.cae.cn/cae/admin/upload/img/{0}'.format(result[0].replace(' ', r'%20'))
        img_name = re.findall('<div class="right_md_name">(.*?)</div>', man_respond.text)[0]
        img_name = os.path.join(dstDir, img_name)
        with open(img_name + '.jpg', 'wb') as fpic:
            fpic.write(urlopen(picurl).read())