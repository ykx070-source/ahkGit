cd "C:\Users\ykx07\Documents\george"
ffmpeg -i "C:\Users\yl228\Music\whiteNoise.webm" -t 90:00 -c:a libmp3lame 
"C:\Users\yl228\Music\whiteNoise_90min.mp3"

py -m yt_dlp --js-runtimes node --yes-playlist -x --audio-format mp3 --audio-quality 6 "https://www.youtube.com/playlist?list="

py -m yt_dlp --js-runtimes node --yes-playlist -x --audio-format mp3 --audio-quality  0 "https://www.youtube.com/watch?v=Y9G-rdCra30"



