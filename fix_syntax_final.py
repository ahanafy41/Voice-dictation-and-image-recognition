import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the broken playAudioChunk block
broken_fragment = """function playAudioChunk(audioBytes)
    -- implementation remains same or updated
end
    audioTrack.write(audioBytes, 0, #audioBytes)
end"""

fixed_fragment = """function playAudioChunk(audioBytes)
    local sampleRate = 24000
    local channelConfig = AudioFormat.CHANNEL_OUT_MONO
    local audioFormat = AudioFormat.ENCODING_PCM_16BIT
    local bufferSize = AudioTrack.getMinBufferSize(sampleRate, channelConfig, audioFormat)
    local AudioTrackClass = luajava.bindClass("android.media.AudioTrack")
    if not audioTrack then
        audioTrack = AudioTrackClass(AudioManager.STREAM_MUSIC, sampleRate, channelConfig, audioFormat, bufferSize, AudioTrack.MODE_STREAM)
        audioTrack.play()
    end
    audioTrack.write(audioBytes, 0, #audioBytes)
end"""

content = content.replace(broken_fragment, fixed_fragment)

# Update model to latest (Gemini 2.0 Flash)
content = content.replace('gemini-2.0-flash-exp', 'gemini-2.0-flash')
content = content.replace('Gemini 2.0 Flash (Live API)', 'Gemini 2.0 Flash (احدث اصدار)')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
