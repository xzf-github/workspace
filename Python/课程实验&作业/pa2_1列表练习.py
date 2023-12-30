'''
1、列表练习题，输出每一步的结果。注意每一步在上一步基础上完成：
（1）创建一个列表a，含有20以内的奇数，即：1、3、5、7、9、11、13、15、17、19。
（2）将列表a备份为b，c，在a列表末尾追加一个奇数21。
（3）把列表a转换为元组t1。
（4）输出列表a第1个元素、最后一个元素、取出a列表中索引3-6的元素。
（5）返回列表a中9的索引值（下标），查找6是否在列表中。
（6）往列表a中5后面插入一个子列表["morning","afternoon"]。
（7）取出列表a中索引3-12的元素，步长为2。
（8）使用2种方法删掉列表a中元素["morning","afternoon"]。
（9）请使用enumerate输出列表a元素和序号（序号从200开始）。
（10）请将列表a所有的元素原地降序排序，并给出排序后的列表。
（11）计算列表a长度并输出。
（12）用reduce函数计算列表a的总乘积。
（13）创建新列表d[15,118,23,4,4,4,2,115,1113,4,4,15,13,15,200]，比较列表a和d的大小。
（14）输出列表d按字符串顺序的最小值。
（15）删除列表d中重复元素4。
（16）输出列表d的最小值、总和和平均值。
（17）统计列表d中15出现的次数。
（18）列表d中重复元素去掉（至少写出两种方法，尽量不改变原列表顺序）。
（19）用两种方式将列表d逆序并输出。
（20）将d中小于100的元素去掉，列表顺序不变，用filter函数。
'''
from functools import reduce

#1
a=[1,3,5,7,9,11,13,15,17,19]
print("题1:",a)
#2
b=a
c=a
a.append(21)
print("题2:",a)
print(b)
print(c)
#3
t1=tuple(a)
print("题3:",t1)
#4
print("题4:",a[0],a[-1],a[3:7])
#5
print("题5:",a.index(9), 6 in a)
#6
a.insert(a.index(5)+1,["morning","afternoon"])
print("题6:",a)
#7
print("题7:",a[3:13:2])
#8
#del a[3]
a.remove(["morning","afternoon"])
print("题8:",a)
#9
print("题9:",list(enumerate(a,200)))
#10
a.reverse()
print("\n题10:",a)
#11
print("题11:",len(a))
#12
product=reduce(lambda x,y:x*y,a)
print("题12:",product)
#13
d=[15,118,23,4,4,4,2,115,1113,4,4,15,13,15,200]
print("题13:",a>d)
#14 输出数值列表d按字符串顺序的最小值。
#print(min(list(map(str,d))))
print("题14:",min(d,key=str))
#15
while(d.count(4)>1):
    d.remove(4)
print("题15:",d)
#16
#print(sum(d))
print("题16:",min(d),sum(d),sum(d)/len(d))
#17
print("题17:",d.count(15))
#18
print("题18:",list(set(d)))
# for i in d:
#     if d.count(i)>1:
#         d.remove(i)
# print(d)
#19 reverse原地   reversed外地
#d.sort(key=None,reverse=True)
# d.reverse()
# print(d)
print("题19:",list(reversed(d)))
#20
def judge(n):
    return n>99
print("题20:",list(filter(judge,d)))