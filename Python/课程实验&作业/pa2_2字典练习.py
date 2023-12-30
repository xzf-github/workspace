# （1）已有列表keys= [97,98,99,100,101],values=[‘a’, ‘b’, ‘c’, ‘d’, ‘e’]，用zip快速生成字典d1；
keys=[97,98,99,100,101]
values=['a', 'b', 'c', 'd', 'e']
d1=dict(zip(keys,values))
print("题1:",d1)
# （2）请循环遍历出所有的keys和values；
print("题2:",)
for i in d1:
    print(i,d1[i],end=" ")
# （3）请在字典中增加一个键值对,101:”e”，输出添加后的字典；
d1[101]="e"
print("\n题3:",d1)
# （4）请查找97对应的值，然后删除字典中这个键值对,并输出删除后的结果；
for i in d1.items():
    if(i==97):
        del d1[i]
        break
print("题4:",d1)
# （5）请删除字典中键100对应的键值对，如果字典中不存在键100，则不报错，返回默认值None；
print("题5:",d1.pop(100,None))
# （6）请获取字典d1中98对应的值，然后将其修改为”banana”；
for i in d1:
    if(i==98):
        d1[i]="banana"
        print("题6:",i,d1[i])
        break
# （7）输出字典d1的键值的总和;
print("题7:",sum(d1.keys()))
# （8）现有d2 = {"f":”fish”,"g":”goose”}，通过update操作使d2元素直接添加到d1中。
d2 = {"f":"fish","g":"goose"}
d1.update(d2)
print("题8:",d1)
# （9）将字典d2按值降序排序。
sorted_d2 = sorted(d2.items(),key=lambda i:i[1])
print("题9:",sorted_d2)
# （10）删除字典d2。
del d2
print("题10:",d2)