'''
1、编写程序，利用元组作为函数返回值，
求最大值、最小值和元素个数，函数形式为fun(a,b,*p,**q)，
然后调用函数fun(2,4,5,7,2,3,x=3,y=4)，
fun(‘a’,’b’,"hello",x="python",y="world",z="good")。
'''
def fun(a, b, *p, **q):
    l=(a,b,*p,*q.values())
    nums = len(p) + len(q)+2
    mini = min(l)
    maxi = max(l)
    return mini, maxi, nums


res1 = fun(2, 4, 5, 7, 2, 3, x=3, y=4)
print(res1)

res2 = fun("a", "b", "hello", x="python", y="world", z="good")
print(res2)
