'''
编写程序，模拟蒙特·卡罗计算圆周率近似值的方法，
输入掷飞镖次数，然后输出圆周率近似值。
'''
from random import random
times=int(input('输入投掷次数:'))
hits=0
for i in range(times):
    x=random()
    y=random()
    if x*x+y*y<=1:
        hits+=1
print(4.0*hits/times)