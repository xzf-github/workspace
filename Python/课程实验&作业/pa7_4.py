# -*- coding: utf-8 -*-
# @Time : 2023/12/15 13:31
# @Author : 023321712228徐泽枫
# @File : pa7_4.py
import jieba
from wordcloud import WordCloud, ImageColorGenerator
import matplotlib.pyplot as plt
import numpy as np
from PIL import Image
# 读取心形图片
image = Image.open("heart.png")
mask = np.array(image)
# 读取文本
with open('教师节祝语.txt', 'r') as f:
    txt=f.read()
txt = ' '.join(jieba.cut(txt))      #中文精确分词
txt = ''.join(txt)    #空格拼接
# 创建WordCloud实例
wc = WordCloud(background_color="white", mask=mask,
               font_path='./fonts/simhei.ttf',
               contour_width=3, contour_color='steelblue')
# 生成词云图
wc.generate(txt)
# 从心形图片创建颜色
image_colors = ImageColorGenerator(mask)
# 显示词云图
plt.imshow(wc.recolor(color_func=image_colors), interpolation="bilinear")
plt.axis("off")
plt.show()