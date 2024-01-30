#from moviepy.editor import concatenate_videoclips
from moviepy.editor import AudioFileClip, VideoFileClip

# 加载视频文件和音频文件
v = VideoFileClip("missing session.mp4")
a = AudioFileClip("missing session.mp3")

video_merged = v.set_audio(a) #给视频v设置音乐a
video_merged.write_videofile("missing session of cs.mp4")
