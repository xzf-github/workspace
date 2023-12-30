import random
nums = [random.randint(1, 1000) for _ in range(20)]
print("初始列表:\n",nums)
#奇数逆序,偶数顺序
sortedNums = sorted(nums[1::2], reverse=True) + sorted(nums[::2])
print("排序後列表：\n",sortedNums)