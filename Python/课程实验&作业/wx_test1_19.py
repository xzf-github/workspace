import random
nums=[random.randint(1,50) for i in range(20)]
print(nums)
nums=nums[5:]+nums[:5]
print(nums)