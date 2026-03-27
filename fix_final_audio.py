import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace missing AudioFormat/AudioRecord/MediaRecorder/etc. with luajava.bindClass calls
# and update the model to the requested native-audio-preview
content = content.replace('gemini-2.0-flash', 'gemini-2.0-flash-native-audio-preview-09-2025')

# Helper to bind common Android classes that might be missing in local scope
import_fix = """
    local AudioFormat = luajava.bindClass("android.media.AudioFormat")
    local AudioRecord = luajava.bindClass("android.media.AudioRecord")
    local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
    local AudioManager = luajava.bindClass("android.media.AudioManager")
    local AudioTrack = luajava.bindClass("android.media.AudioTrack")
"""

# Insert this before any audio usage in runRestLiveCycle and playAudioChunk
content = content.replace('function runRestLiveCycle(voiceId, modelId)', 'function runRestLiveCycle(voiceId, modelId)\n' + import_fix)
content = content.replace('function playAudioChunk(audioBytes)', 'function playAudioChunk(audioBytes)\n' + import_fix)

# Also ensure stopGeminiLive doesn't fail
content = content.replace('function stopGeminiLive()', 'function stopGeminiLive()\n' + import_fix)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
