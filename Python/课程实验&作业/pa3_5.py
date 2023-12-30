'''
编写代码，模拟决赛现场最终成绩的计算过程，
输入评委人数和每人的打分（循环和异常处理确保输入数据正确），
去掉最高分和最低分，算出平均分（保留2位小数），最后输出最高分，最低分和平均分。
'''
while True:
    try:
        n=int(input('请输入评委人数:'))
        if n<=2:
            print('评委人数过少,必须多于两人,请重新输入')
        else:
            break
    except:
        pass
scores=[]
for i in range(n):
    while True:
        try:
            score=input('请输入第{0}个评委的分数:'.format(i+1))
            score=float(score)
            assert 0<=score<=100
            scores.append(score)
            break
        except:
            print('分数输入错误')
top=max(scores)
bottom=min(scores)
scores.remove(top)
scores.remove(bottom)
final=round(sum(scores)/len(scores),2)
print('去掉一个最高分{0}\n和一个最低分{1}\n最后得分为{2}'.format(top,bottom,final))

x = float(input('请输入x：'))
if 0<=x<5:
    print(x)
elif 5<=x<10:
    print(3*x-5)
elif 10<=x<20:
    print(0.5*x-2)
else:
    print(0)