# -*- coding: utf-8 -*-
# @Time : 2023/11/29 11:46
# @Author : 023321712228徐泽枫
# @File : pa6_2_customer.py
import socket
import sys
HOST = '127.0.0.1'
PORT = 50007
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
try:
    s.connect((HOST, PORT))
except Exception as e:
    print('Server not found or not open')
    sys.exit()
while True:
    c = input('Input the content you want to send:')
    s.sendall(c.encode())
    data = s.recv(1024)
    data = data.decode()
    print('Received:', data)
    if c.lower() == 'bye bye':
        break
s.close()
