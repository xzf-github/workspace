
while True:#非法输入修改后模板
    n=int(input('输入一个大于2的自然数:'))
    if(n>2):
        break
    else:
        print('非法输入,请重新输入一个大于2的自然数!')
cnt=0
st=list(range(2,n))
sqrt=int(n**0.5)
for i,e in enumerate(st):
    if e>sqrt:
        break
    st[i+1:]=filter(lambda x:x%e != 0,st[i+1:])
print(st)
# for n in range(2,x):
#     if n%2 ==0:
#         continue
#     for i in range(3,int(n**0.5)+1,2):#相当于[3,sqrt(n)+1]
#         if n%i ==0:
#             break;
#     else:
#         print(n,end="\t")
#         cnt+=1
#         if cnt%10 == 0:#每10个数换一行,行多不便截图
#             print()
