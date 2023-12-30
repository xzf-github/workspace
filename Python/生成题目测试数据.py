import os
import random
import  numpy as np
# 指定输入输出文件后缀
input_suffix = '.in'
output_suffix = '.out'

# 指定程序路径和输入输出文件路径
program_path = r'D:\Workspace\C++\temp3.exe'
input_folder = r'C:\Users\26365\Desktop'
output_folder = r'C:\Users\26365\Desktop'

# 创建输入输出文件夹（如果不存在）
if not os.path.exists(input_folder):
    os.makedirs(input_folder)
if not os.path.exists(output_folder):
    os.makedirs(output_folder)

# 循环生成10组随机输入数据并运行程序
for i in range(1, 11):
    # 生成随机n, k, b值
    n = random.randint(1, 1000000)
    k = random.randint(-100000, 100000)
    b = random.randint(-100000, 100000)

    # 生成随机点坐标数据 (n x 2 numpy array)
    points = np.random.randint(-1000000000, 1000000000,(n, 2))

    input_file = f'{i}{input_suffix}'
    output_file = f'{i}{output_suffix}'

    # 将数据写入输入文件
    with open(os.path.join(input_folder, f'{i}{input_suffix}'), 'w') as f:
        f.write(f'{n} {k} {b}\n')  # 第一行写入n, k, b
        for point in points:
            f.write(f'{point[0]} {point[1]}\n')  # 接下来n行写入点的坐标 (xi, yi)

        # 运行程序并将输出写入输出文件
    os.system(f'{program_path} < {os.path.join(input_folder, input_file)} > {os.path.join(output_folder, output_file)}"')