x=sum(map(lambda num:len(set(str(num)))==4,range(1000,10000)))
print("各位数字互不相同的四位数的个数为:",x)
