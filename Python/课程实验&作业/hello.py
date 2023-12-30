import jieba
from wordcloud import WordCloud
with open('poems.txt', 'r') as f:
    txt=f.read()
words = ' '.join(jieba.cut(txt))      #中文精确分词
newtxt = ''.join(words)    #空格拼接
wordcloud = WordCloud(
        r'C:\windows\fonts\simfang.ttf',width=1500,height=1200,
        background_color='white',font_step=3,
        random_state=False,prefer_horizontal=0.9).generate(newtxt)
wordcloud.to_file('古诗词词云图.png')
