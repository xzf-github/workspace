'''
定义一个生成器函数，实现去除列表中重复元素同时保持原来顺序的功能。
'''
def generator(l):
    for i in l:
        if l.count(i)>1:
            l.remove(i)
    return l

l=[2,2,1,1,3,6,7,7]
l=generator(l)
print(l)