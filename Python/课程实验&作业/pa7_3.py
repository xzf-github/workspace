# -*- coding: utf-8 -*-
# @Time : 2023/12/15 13:31
# @Author : 023321712228徐泽枫
# @File : pa7_3.py
import matplotlib.pyplot as plt
import numpy as np
plt.rcParams['font.sans-serif'] = 'simhei'
plt.rcParams['axes.unicode_minus'] = False
# 时间轴
t = np.arange(0, 120, 0.5)
#   np.piecewise（array，[condition1,condition2]，[value1,value2]）
#   即：传入一个array，condition1满足时值为value1，condition2满足时值为value2
# 兔子的运行轨迹
rabbit = np.piecewise(t,
                      [t < 10, t > 110],  # 兔子跑步的两个时间段
                      [lambda x: 15 * x,  # 兔子第一段时间的路程
                       lambda x: 20 * (x - 110) + 150,  # 第二个时间段的路程
                       lambda x: 150]  # 兔子中间睡觉时的路程
                      )
tortoise = 3 * t  # 奔跑吧，小乌龟
plt.plot(t, tortoise, label='乌龟')
plt.plot(t, rabbit, label='兔子')
plt.title('龟兔赛跑', fontsize=24)
plt.xlabel('时间（秒）', fontsize=18)
plt.ylabel('与终点的距离（米）', fontsize=18)
plt.legend()
plt.show()