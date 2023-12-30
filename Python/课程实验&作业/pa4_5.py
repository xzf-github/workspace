'''
编写程序，实现自定义栈类，模拟入栈、出栈、判断栈是否为空、是否已满，以及改变栈的大小等操作。
'''


class stack:
    def __init__(self, max_size):
        self.stk = []
        self.max_size = max_size
    def is_empty(self):
        return len(self.stk) == 0
    def is_full(self):
        return len(self.stk) == self.max_size
    def push(self, item):
        if self.is_full():
            print("栈已满,无法入栈")
        else:
            self.stk.append(item)
    def pop(self):
        if self.is_empty():
            print("栈已空,无法出栈")
            return None
        else:
            item = self.stk.pop()
            return item
    def resize(self, new_size):
        if new_size < self.max_size and len(self.stk) > new_size:
            print("无法改变栈的大小,否则将破坏栈中元素")
        else:
            self.max_size = new_size
            print("当前栈的最大容量为:%d" % self.max_size)


stk = stack(2);
stk.push(1)
stk.push(2)
stk.push(3)
print(stk.pop())
print(stk.pop())
print(stk.pop())
stk.resize(5)
