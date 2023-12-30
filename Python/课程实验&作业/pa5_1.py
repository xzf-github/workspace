import random
import string
def generate_person_info():
    # 生成随机的姓名、性别、年龄、电话号码、家庭住址和电子邮箱
    name = ''.join(random.choices(string.ascii_uppercase) + random.choices(string.ascii_lowercase, k=5))
    gender = random.choice(['男', '女'])
    age = random.randint(18, 80)
    phone = ''.join(random.choices(string.digits, k=11))
    address = ''.join(random.choices(string.ascii_uppercase) + random.choices(string.ascii_lowercase, k=4) + random.choices(string.digits,k=3))
    email = ''.join(random.choices(string.digits, k=10)+list('@')+random.choices(string.digits,k=3)+list('.com'))

    # 返回信息
    return f"姓名: {name} 性别: {gender} 年龄: {age} 电话号码: {phone} 家庭住址: {address} 电子邮箱地址: {email}\n"

# 生成100个人的信息并写入文件
with open('person_info.txt', 'w') as f:
    for _ in range(100):
        f.write(generate_person_info())

# 从文件中读取并输出信息
with open('person_info.txt', 'r') as f:
    print(f.read())

