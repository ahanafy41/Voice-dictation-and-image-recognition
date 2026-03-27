import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the broken line with \n literal
content = content.replace('local AudioRecordClass = luajava.bindClass("android.media.AudioRecord")\\n    audioRecord = AudioRecordClass(', 'local AudioRecordClass = luajava.bindClass("android.media.AudioRecord")\n    audioRecord = AudioRecordClass(')
content = content.replace('local AudioTrackClass = luajava.bindClass("android.media.AudioTrack")\\n        audioTrack = AudioTrackClass(', 'local AudioTrackClass = luajava.bindClass("android.media.AudioTrack")\n        audioTrack = AudioTrackClass(')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
