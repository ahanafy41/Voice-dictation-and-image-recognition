import sys

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the startGeminiLive implementation with a more robust version
old_start_logic = """    import "okhttp3.OkHttpClient"
    import "okhttp3.Request"
    import "okhttp3.WebSocket"
    import "okhttp3.WebSocketListener"
    import "okhttp3.RequestBody"
    import "android.media.AudioFormat"
    import "android.media.AudioRecord"
    import "android.media.AudioTrack"
    import "android.media.MediaRecorder"
    import "android.media.AudioManager"

    local client = OkHttpClient()"""

new_start_logic = """    local OkHttpClient, Request, WebSocketListener
    local success_ok = pcall(function()
        OkHttpClient = luajava.bindClass("okhttp3.OkHttpClient")
        Request = luajava.bindClass("okhttp3.Request")
        WebSocketListener = luajava.bindClass("okhttp3.WebSocketListener")
    end)

    if not success_ok then
        success_ok = pcall(function()
            OkHttpClient = luajava.bindClass("okhttp.OkHttpClient")
            Request = luajava.bindClass("okhttp.Request")
            WebSocketListener = luajava.bindClass("okhttp.WebSocketListener")
        end)
    end

    if not success_ok or not OkHttpClient then
        service.asyncSpeak("عذراً، مكتبة الاتصال المباشر غير متوفرة على هذا الجهاز. جاري البحث عن بدائل...")
        print("OkHttp not found")
        isGeminiLiveRunning = false
        return
    end

    import "android.media.AudioFormat"
    import "android.media.AudioRecord"
    import "android.media.AudioTrack"
    import "android.media.MediaRecorder"
    import "android.media.AudioManager"

    local client = OkHttpClient()"""

content = content.replace(old_start_logic, new_start_logic)

# Also ensure startRecording and playAudioChunk use pcall for classes
content = content.replace('audioRecord = AudioRecord(', 'local AudioRecordClass = luajava.bindClass("android.media.AudioRecord")\\n    audioRecord = AudioRecordClass(')
content = content.replace('audioTrack = AudioTrack(', 'local AudioTrackClass = luajava.bindClass("android.media.AudioTrack")\\n        audioTrack = AudioTrackClass(')

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
