# -*- coding: utf-8 -*-
# @Time : 2023/12/15 13:33
# @Author : 023321712228徐泽枫
# @File : pa7_1_2.py
import pandas as pd
import matplotlib.pyplot as plt
from copy import deepcopy

plt.rcParams['font.sans-serif'] = ['simhei']  #显示汉字
#读取数据，丢弃缺失值
df = pd.read_csv('data.csv', encoding='cp936')
df = df.dropna()
#生成并保存营业额折线图
plt.figure()
df.plot(x='日期')
plt.savefig('first.jpg')
df = pd.read_csv('data.csv', encoding='cp936')
df = df.dropna()
df1 = deepcopy(df)
# df1['month'] = df1['日期'].map(lambda x: x[:x.rindex('-')])
df1['month'] = df1['日期'].str.slice(0, 7)
df1 = df1.groupby(by='month', as_index=False).sum()
df1.plot(x='month', kind='bar')
for i in df1.index:
    plt.text(i, df1.loc[i, '销量'] + 10, str(df1.loc[i, '销量']), ha='center')
plt.savefig('second.jpg')
#查找涨幅最大的月份，写入文件
df2 = df1.drop('month', axis=1)
df2=df2.diff()
m = df2['销量'].nlargest(1).keys()[0]
with open('maxMonth.txt', 'w') as fp:
    fp.write(df1.loc[7, 'month'])
#按季度统计，生成并保存饼状图
df1 = deepcopy(df)
df1['month'] = df1['日期'].str.slice(0, 7)
df1 = df1.groupby(by='month', as_index=False).sum()
one = df1[:3]['销量'].sum()
two = df1[3:6]['销量'].sum()
three = df1[6:9]['销量'].sum()
four = df1[9:12]['销量'].sum()
plt.pie([one, two, three, four],
         labels=['one', 'two', 'three', 'four'], autopct='%.1f%%')
plt.savefig('third.jpg')
