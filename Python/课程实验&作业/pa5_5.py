'''
用Python制作词云，对1000首古诗做词云分析。
'''
import jieba
from wordcloud import WordCloud
with open('poems.txt', 'r') as f:
    txt=f.read()
txt = ' '.join(jieba.cut(txt))      #中文精确分词
txt = ''.join(txt)    #空格拼接
wc = WordCloud(
        r'C:\windows\fonts\simfang.ttf',width=1500,height=1200,
        background_color='white',font_step=3,
        random_state=False,prefer_horizontal=0.9).generate(txt)
wc.to_file('古诗词词云图.png')

