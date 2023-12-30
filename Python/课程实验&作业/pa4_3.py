'''
编写函数模拟猜数游戏。
系统随机产生一个数，玩家最多可以默认为猜3次（可以修改次数），
系统会根据玩家的猜测进行提示，
玩家则可以根据系统的提示对下一次的猜测进行适当调整。
'''
import random
def guess(times):
    if times==0:
        default=3
    print("本局一共可以猜%d次"%default)
    num=random.randint(1,10);
    while 1:
        if (default <= 0):
            print("猜测次数已用尽,本局失败")
            return
        n=int(input("请玩家输入猜的数字:"))
        default-=1
        if n>num:
            print("猜大了")
        elif n<num:
            print("猜小了")
        else:
            print("恭喜你猜对了")
            return
times=int(input("请输入猜测次数(输入0为默认猜测次数):"))
guess(times)