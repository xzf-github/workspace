'''
2、假设一段楼梯共15个台阶，小明一步最多能上3个台阶。
编写程序计算小明上这段楼梯一共有多少种方法。
要求给出递推法和递归法两种代码。
'''
# 递推法
dp=[0,1,2,4]
for i in range(4,15+1):
    dp.append(dp[i-3]+dp[i-2]+dp[i-1])
print("一共有%d种方法"%dp[15])
#递归法
def methods(n):
    if n<=2:
        return n
    if n==3:
        return 4
    return methods(n-1)+methods(n-2)+methods(n-3)
print("一共有%d种方法"%methods(15))
