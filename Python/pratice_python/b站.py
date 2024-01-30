import re
import json
import requests
#以下三个模块用于合成音视频
import os
# from moviepy.audio.io.AudioFileClip import AudioFileClip
# from moviepy.video.io.VideoFileClip import VideoFileClip
# 以下两个模块为上两个模块的substitute
# from moviepy.editor import concatenate_videoclips
from moviepy.editor import AudioFileClip, VideoFileClip
head = {
    "Referer":"https://www.bilibili.com",
    "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31"
}
url = "https://www.bilibili.com/video/BV1XN4y187zp/?spm_id_from=333.337.search-card.all.click"
response = requests.get(url,headers=head)
#print(response)
response.encoding = response.apparent_encoding
htmlStr = response.text
#print(htmlStr)
r="<script>window.__playinfo__=(.*?)</script>"
jsonStr = re.findall(r,htmlStr)[0] #拿到json字符串
#print(jsonStr)
# 转换为json对象
jsonData = json.loads(jsonStr)
video = jsonData["data"]["dash"]["video"][0]["baseUrl"] # 视频地址
audio = jsonData["data"]["dash"]["audio"][0]["baseUrl"] # 音频地址
# 获取视频文件
mp4 = open("missing session.mp4","wb")
resp = requests.get(video,headers=head)
mp4.write(resp.content)
mp4.close()
# 获取音频文件
mp3 = open("missing session.mp3","wb")
resp = requests.get(audio,headers=head)
mp3.write(resp.content)
mp3.close()
# 合成音视频
v = VideoFileClip("missing session.mp4")
a = AudioFileClip("missing session.mp3")
video_merged = v.set_audio(a) #给视频v设置音乐a
video_merged.write_videofile("missing session of cs.mp4")
os.remove('missing session.mp3')
os.remove('missing session.mp4')