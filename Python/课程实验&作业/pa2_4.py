import random
import string
randStr = ''.join(random.choices(string.ascii_letters + string.digits, k=200))
count=0
for c in randStr:
    count+=1
    print(c,end="")
    if(count%70==0):
        print()

print()
c_cnt = {}

for c in randStr:
    if c in c_cnt:
        c_cnt[c] += 1
    else:
        c_cnt[c] = 1

c_cnt=dict(sorted(c_cnt.items(),key=lambda i:i[1],reverse=True))
count = 0
for c in c_cnt:
    print(f"字符：'{c}'，频率：{c_cnt.get(c)}", end="    ")
    count+=1
    if(count%5==0):
        print()
