import re
from collections import Counter
try:
    with open('data.txt', 'r') as f:
        text = f.read()
except :
    print("文件不存在 ")
# 统计段落数、行数、句数、单词数
paragraphs = text.count('\n\n')
lines = text.count('\n')
sentences = len(re.findall(r'[.!?]+', text))
words = re.findall(r'\b\w+\b', text)
word_count = len(words)
print(f"段落数: {paragraphs}")
print(f"行数: {lines}")
print(f"句数: {sentences}")
print(f"单词数: {word_count}")
word_freq = Counter(words)
print("频率如下:")# 统计各单词出现的频率，并输出频率最高的前10个
for word, freq in word_freq.most_common(10):
    print(f"{word}: {freq}")