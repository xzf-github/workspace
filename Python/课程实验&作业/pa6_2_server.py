# -*- coding: utf-8 -*-
# @Time : 2023/11/29 11:33
# @Author : 023321712228徐泽枫
# @File : pa6_2_server.py
import socket
from os.path import commonprefix
words = {'what is you major':'computer science','how are you?': 'Fine,thank you.','how old are you?': '28',
         'which university do you want to study in':'Huazhong University Of Science and Technology',
         'what is your name?': 'Mary',"what's your name?": 'Mary','where do you work?': 'University','bye': 'Bye'}
HOST = ''
PORT = 50007
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(1)
print('Listening on port:', PORT)
conn, addr = s.accept()
print('Connected by', addr)
while True:
    data = conn.recv(1024).decode()
    if not data:
        break
    print('Received message:', data)
    m = 0
    key = ''
    for k in words.keys():
        data = ' '.join(data.split())
        if len(commonprefix([k, data])) > len(k) * 0.7:
            key = k
            break
        length = len(set(data.split()) & set(k.split()))
        if length > m:
            m = length
            key = k
    conn.sendall(words.get(key, 'Sorry.').encode())
conn.close()
s.close()

'''
2、编写聊天程序的服务端代码和客户端代码。
完成后，先启动服务端代码，然后启动客户端程序用输入问题，服务端可以返回相应的答案。
要求服务端代码具有一定的智能，能够根据不完整的问题识别客户端真正要问的问题。
'''