import random
from collections import Counter
nums = [random.randint(1, 20) for i in range(50)]
times = Counter(nums)
for n, time in times.most_common():
    print(f"数字{n}出现的频率为{time}")
