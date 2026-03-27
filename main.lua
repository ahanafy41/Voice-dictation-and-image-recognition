require "import"
if activity then activity.finish() end

function probeWebSocketLibraries()
    local libs = {
        "okhttp3.OkHttpClient",
        "okhttp.OkHttpClient",
        "org.java_websocket.client.WebSocketClient",
        "com.neovisionaries.ws.client.WebSocketFactory",
        "de.tavendo.autobahn.WebSocketConnection"
    }
    local found = {}
    for _, lib in ipairs(libs) do
        local s, r = pcall(luajava.bindClass, lib)
        if s and r then table.insert(found, lib) end
    end
    if #found > 0 then
        service.asyncSpeak("تم العثور على: " .. table.concat(found, ", "))
    else
        service.asyncSpeak("لم يتم العثور على أي مكتبة سوكيت.")
    end
end

import "android.widget.*"
import "android.speech.RecognizerIntent"
import "android.speech.SpeechRecognizer"
import "android.accessibilityservice.AccessibilityService"
import "android.speech.RecognitionListener"
import "android.content.Intent"
import "android.view.WindowManager"
import "android.graphics.PixelFormat"
import "android.content.Context"
import "android.view.View"
import "android.content.SharedPreferences"
import "android.net.Uri"
import "org.json.JSONObject"
import "org.json.JSONArray"
import "android.view.Gravity"
import "android.view.accessibility.AccessibilityNodeInfo"
import "java.io.File"
import "java.io.FileInputStream"
import "android.util.Base64"
import "android.graphics.Bitmap"
import "java.io.ByteArrayOutputStream"
import "android.widget.RadioGroup"
import "android.widget.RadioButton"
import "android.content.ClipData"
import "android.widget.ScrollView"
import "android.graphics.Typeface"
import "android.view.MotionEvent"
import "android.provider.Settings"
import "android.widget.ArrayAdapter"
import "android.widget.Spinner"
import "android.widget.ListView"
import "android.widget.BaseAdapter"
import "java.util.ArrayList"
import "java.util.HashMap"
import "android.R" -- For android.R.layout resources
import "android.widget.AdapterView" -- For Spinner listener
import "android.speech.tts.TextToSpeech"
import "java.util.Locale"
import "android.speech.tts.Voice" -- New import for Voice object
import "android.graphics.drawable.GradientDrawable" -- Added to fix the graphics nil value error
import "android.os.Handler"
import "android.os.Looper"
import "android.app.AlertDialog"
import "android.view.inputmethod.InputMethodManager"
import "java.net.HttpURLConnection"
import "java.io.InputStreamReader"
import "java.io.BufferedReader"
import "java.io.OutputStreamWriter"
local wm = service.getSystemService(Context.WINDOW_SERVICE)
import "android.graphics.BitmapFactory"
import "android.graphics.Matrix"

function styleButton(btn, colorType)
    local bg = GradientDrawable()
    bg.setCornerRadius(20)
    btn.setPadding(20, 25, 20, 25)
    btn.setTextSize(16)
    btn.setTypeface(nil, Typeface.BOLD)
    if colorType == "primary" then
        bg.setColor(0xFF1976D2) -- Deep Blue
        btn.setTextColor(0xFFFFFFFF)
    elseif colorType == "danger" then
        bg.setColor(0xFFD32F2F) -- Red
        btn.setTextColor(0xFFFFFFFF)
    else
        bg.setColor(0xFF2C2C2C) -- Dark Surface
        bg.setStroke(2, 0xFF444444)
        btn.setTextColor(0xFF64B5F6) -- Light Blue Accent Text
    end
end

-- **Base64 Encode Function**
local base64_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function encode_base64(data)
    local b = ''
    local i = 1
    while i <= #data do
        local byte1 = string.byte(data, i)
        local byte2 = string.byte(data, i + 1)
        local byte3 = string.byte(data, i + 2)
        local enc1 = bit.rshift(byte1, 2)
        local enc2 = bit.lshift(bit.band(byte1, 0x03), 4) + bit.rshift(byte2 or 0, 4)
        local enc3 = 64 -- padding
        local enc4 = 64 -- padding
        if byte2 then
            enc3 = bit.lshift(bit.band(byte2, 0x0f), 2) + bit.rshift(byte3 or 0, 6)
            if byte3 then
                enc4 = bit.band(byte3, 0x3f)
            end
        end
        b = b .. base64_chars:sub(enc1 + 1, enc1 + 1) ..
                 base64_chars:sub(enc2 + 1, enc2 + 1) ..
                 (enc3 == 64 and '=' or base64_chars:sub(enc3 + 1, enc3 + 1)) ..
                 (enc4 == 64 and '=' or base64_chars:sub(enc4 + 1, enc4 + 1))
        i = i + 3
    end
    return b
end

-- **Escape Strings for JSON**
function escapeJsonString(str)
    if not str then return "" end
    str = str:gsub('\\', '\\\\')
    str = str:gsub('"', '\\"')
    str = str:gsub('\n', '\\n')
    str = str:gsub('\r', '\\r')
    str = str:gsub('\t', '\\t')
    return str
end

-- **Helper: Recursively convert Lua table to Java JSON Object/Array**
function toJavaJSON(t)
    local type_t = type(t)
    if type_t == "table" then
        local isArray = false
        if #t > 0 then isArray = true end
        
        if isArray then
            local ja = JSONArray()
            for _, v in ipairs(t) do
                ja.put(toJavaJSON(v))
            end
            return ja
        else
            local jo = JSONObject()
            for k, v in pairs(t) do
                jo.put(tostring(k), toJavaJSON(v))
            end
            return jo
        end
    elseif type_t == "userdata" then
        return t -- Assume it's a Java object
    else
        return t -- Primitives (string, number, boolean)
    end
end

-- **Gemini Models (Latest 2026)**
local geminiModels = {
    { name = "Gemini 3.1 Flash-Lite (الأسرع والأحدث)", id = "gemini-3.1-flash-lite-preview" },
    { name = "Gemini 3 Flash (أداء عالي)", id = "gemini-3-flash-preview" },
    { name = "Gemini 2.5 Flash (مستقر)", id = "gemini-2.5-flash" },
    { name = "Gemini 2.0 Flash (احدث اصدار)", id = "gemini-2.0-flash-native-audio-preview-09-2025" }
}
local defaultGeminiModelId = "gemini-3.1-flash-lite-preview"
local defaultGeminiLiveModelId = "gemini-2.0-flash-native-audio-preview-09-2025"

local geminiLiveVoices = {
    { name = "Aoede (أنثوي)", id = "aoede" },
    { name = "Charon (ذكوري)", id = "charon" },
    { name = "Fenrir (ذكوري)", id = "fenrir" },
    { name = "Kore (أنثوي)", id = "kore" },
    { name = "Puck (ذكوري)", id = "puck" }
}
local defaultGeminiLiveVoice = "puck"

-- **Groq Models (Optimized for Free Tier)**
local groqModels = {
    { name = "Llama 3.1 8B (Recommended)", id = "llama-3.1-8b-instant" }, 
    { name = "Gemma 2 9B IT (Fast)", id = "gemma2-9b-it" }, 
    { name = "Llama 3.3 70B (High Usage)", id = "llama-3.3-70b-versatile" }, 
    { name = "Mixtral 8x7B", id = "mixtral-8x7b-32768" }
}
-- **Groq Vision Models**
local groqVisionModels = {
    { name = "Llama 3.2 11B Vision (أداء مذهل)", id = "llama-3.2-11b-vision-preview" },
    { name = "Llama 3.2 90B Vision (أدق وأكثر ذكاءً)", id = "llama-3.2-90b-vision-preview" }
}
local defaultGroqVisionModelId = "llama-3.2-11b-vision-preview"
local defaultImageDescriptionProvider = "gemini"
local defaultGroqModelId = "llama-3.1-8b-instant" 

-- **Audio Models (Whisper & Gemini)**
local audioModels = {
    { name = "Whisper Large V3 (Groq)", id = "whisper-large-v3", provider = "groq" },
    { name = "Whisper V3 Turbo (Groq)", id = "whisper-large-v3-turbo", provider = "groq" },
    { name = "Wit.ai (Arabic/General)", id = "wit-dictation", provider = "wit" },
    { name = "Gemini 3.1 Flash-Lite (Gemini)", id = "gemini-3.1-flash-lite-preview", provider = "gemini" },
    { name = "Gemini 3 Flash (Gemini)", id = "gemini-3-flash-preview", provider = "gemini" },
    { name = "Gemini 2.5 Flash (Gemini)", id = "gemini-2.5-flash", provider = "gemini" }
}
local defaultAudioModelId = "whisper-large-v3"

-- **Supported Languages** (for dictation and translation)
local supportedLanguages = {
    { code = "ar", name = "العربية", human_readable_for_gemini = "Arabic" },
    { code = "en", name = "English", human_readable_for_gemini = "English" },
    { code = "fr-FR", name = "Français (France)", human_readable_for_gemini = "French" }
}
local defaultSelectedLanguage = "ar"
local defaultTranslateTo = "ar"

-- **Load Settings with Defaults**
local prefs = service.getSharedPreferences("voice_settings", Context.MODE_PRIVATE)
selectedLanguage = prefs.getString("language", defaultSelectedLanguage)
continuousDictationEnabled = prefs.getBoolean("continuousDictation", false)
autoSpaceEnabled = prefs.getBoolean("autoSpaceEnabled", true)
geminiCorrectionEnabled = prefs.getBoolean("geminiCorrectionEnabled", false)

-- Provider Settings
geminiApiKey = prefs.getString("geminiApiKey", "")
groqApiKey = prefs.getString("groqApiKey", "")
witApiKey = prefs.getString("witApiKey", "")

local loadedModelId = prefs.getString("geminiModelId", defaultGeminiModelId)
local isValidModel = false
for _, model in ipairs(geminiModels) do
    if model.id == loadedModelId then isValidModel = true; break end
end
selectedGeminiModelId = isValidModel and loadedModelId or defaultGeminiModelId

selectedGeminiLiveVoice = prefs.getString("geminiLiveVoice", defaultGeminiLiveVoice)
selectedGeminiLiveModelId = prefs.getString("geminiLiveModelId", defaultGeminiLiveModelId)
geminiLiveEnabled = prefs.getBoolean("geminiLiveEnabled", true)

selectedGroqModelId = prefs.getString("groqModelId", defaultGroqModelId)
selectedAudioModelId = prefs.getString("audioModelId", defaultAudioModelId)

summarizeEnabled = prefs.getBoolean("summarizeEnabled", false)
imageDescriptionEnabled = prefs.getBoolean("imageDescriptionEnabled", false)
screenshotMode = prefs.getString("screenshotMode", "full") -- "full" or "focus"
showFloatingSettingsButtonEnabled = prefs.getBoolean("showFloatingSettingsButton", false)
newTranslationFeatureEnabled = prefs.getBoolean("newTranslationFeatureEnabled", false)
translateToLanguage = prefs.getString("translateToLanguage", defaultTranslateTo)

-- PDF TTS Settings
pdfTtsEngine = prefs.getString("pdfTtsEngine", "")
pdfTtsVoiceName = prefs.getString("pdfTtsVoiceName", "")
pdfTtsSpeed = prefs.getFloat("pdfTtsSpeed", 1.0)
startWithDictation = prefs.getBoolean("startWithDictation", true)
pdfTtsAutoNext = prefs.getBoolean("pdfTtsAutoNext", true)



local restLiveHistory = {}
local isRestLiveListening = false

function stopGeminiLive()

    local AudioFormat = luajava.bindClass("android.media.AudioFormat")
    local AudioRecord = luajava.bindClass("android.media.AudioRecord")
    local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
    local AudioManager = luajava.bindClass("android.media.AudioManager")
    local AudioTrack = luajava.bindClass("android.media.AudioTrack")

    isGeminiLiveRunning = false
    isRestLiveListening = false
    if audioRecord then
        pcall(function() audioRecord.stop(); audioRecord.release() end)
        audioRecord = nil
    end
    if audioTrack then
        pcall(function() audioTrack.stop(); audioTrack.release() end)
        audioTrack = nil
    end
    service.asyncSpeak("تم إيقاف البث.")
end

function startGeminiLive(voiceId, modelId)
    if isGeminiLiveRunning then return end
    if geminiApiKey == "" then service.asyncSpeak("مفتاح Gemini API مفقود."); return end

    isGeminiLiveRunning = true
    restLiveHistory = {}
    service.asyncSpeak("بدء المحادثة المباشرة. أنا أستمع إليك...")

    -- Start the first recording cycle
    runRestLiveCycle(voiceId, modelId)
end

function runRestLiveCycle(voiceId, modelId)

    local AudioFormat = luajava.bindClass("android.media.AudioFormat")
    local AudioRecord = luajava.bindClass("android.media.AudioRecord")
    local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
    local AudioManager = luajava.bindClass("android.media.AudioManager")
    local AudioTrack = luajava.bindClass("android.media.AudioTrack")

    if not isGeminiLiveRunning then return end

    local sampleRate = 16000
    local channelConfig = AudioFormat.CHANNEL_IN_MONO
    local audioFormat = AudioFormat.ENCODING_PCM_16BIT
    local bufferSize = AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat)

    local AudioRecordClass = luajava.bindClass("android.media.AudioRecord")
    audioRecord = AudioRecordClass(MediaRecorder.AudioSource.MIC, sampleRate, channelConfig, audioFormat, bufferSize)

    local recordingFile = File(service.getExternalFilesDir(nil), "live_temp.pcm")
    local fos = luajava.bindClass("java.io.FileOutputStream")(recordingFile)

    audioRecord.startRecording()
    isRestLiveListening = true

    -- Record for 4 seconds or until user stops
    Thread(luajava.createProxy("java.lang.Runnable", {
        run = function()
            local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, bufferSize)
            local startTime = System.currentTimeMillis()
            while isGeminiLiveRunning and isRestLiveListening and (System.currentTimeMillis() - startTime < 4000) do
                local read = audioRecord.read(buffer, 0, bufferSize)
                if read > 0 then fos.write(buffer, 0, read) end
            end
            fos.close()
            audioRecord.stop()
            audioRecord.release()

            if isGeminiLiveRunning then
                processRestLiveAudio(recordingFile, voiceId, modelId)
            end
        end
    })).start()
end

function processRestLiveAudio(file, voiceId, modelId)
    local bytes = luajava.bindClass("java.nio.file.Files").readAllBytes(file.toPath())
    local base64Audio = Base64.encodeToString(bytes, Base64.NO_WRAP)

    local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. (modelId or "gemini-2.0-flash-native-audio-preview-09-2025") .. ":generateContent?key=" .. geminiApiKey

    local payload = {
        contents = restLiveHistory,
        generationConfig = {
            response_modalities = {"AUDIO"},
            speech_config = {
                voice_config = { prebuilt_voice_config = { voice_name = voiceId or "puck" } }
            }
        }
    }

    -- Add user turn
    table.insert(payload.contents, {
        role = "user",
        parts = { { inline_data = { mime_type = "audio/pcm;rate=16000", data = base64Audio } } }
    })

    Http.post(url, toJavaJSON(payload).toString(), {["Content-Type"]="application/json"}, function(status, response)
        if status == 200 then
            local j = JSONObject(response)
            local candidate = j.getJSONArray("candidates").getJSONObject(0)
            local content = candidate.getJSONObject("content")
            local parts = content.getJSONArray("parts")

            -- Save to history
            table.insert(restLiveHistory, { role = "model", parts = { { text = parts.getJSONObject(0).has("text") and parts.getJSONObject(0).getString("text") or "" } } })

            -- Play Audio Response
            for i = 0, parts.length()-1 do
                local p = parts.getJSONObject(i)
                if p.has("inline_data") then
                    local audioData = p.getJSONObject("inline_data").getString("data")
                    local audioBytes = Base64.decode(audioData, Base64.DEFAULT)
                    playAudioChunk(audioBytes)
                end
            end

            -- Wait for playback to finish (roughly) and cycle
            mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {
                run = function() runRestLiveCycle(voiceId, modelId) end
            }), 2000)
        else
            service.asyncSpeak("فشل استلام الرد: " .. tostring(status))
            stopGeminiLive()
        end
    end)
end

function playAudioChunk(audioBytes)

    local AudioFormat = luajava.bindClass("android.media.AudioFormat")
    local AudioRecord = luajava.bindClass("android.media.AudioRecord")
    local MediaRecorder = luajava.bindClass("android.media.MediaRecorder")
    local AudioManager = luajava.bindClass("android.media.AudioManager")
    local AudioTrack = luajava.bindClass("android.media.AudioTrack")

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
end


local geminiLiveWindow = nil


function showGeminiLiveWindow()
    local success, err = pcall(function()
        if geminiLiveWindow then return end
        service.asyncSpeak("جاري فتح البث المباشر"); probeWebSocketLibraries()


    geminiLiveWindow = LinearLayout(service)
    geminiLiveWindow.setOrientation(LinearLayout.VERTICAL)
    geminiLiveWindow.setBackgroundColor(0xFF000000)
    geminiLiveWindow.setPadding(30, 30, 30, 30)

    local titleTxt = TextView(service)
    titleTxt.setText("بث Gemini المباشر 🎤")
    titleTxt.setTextSize(24)
    titleTxt.setTextColor(0xFFFFFFFF)
    titleTxt.setGravity(Gravity.CENTER)
    titleTxt.setPadding(0, 10, 0, 30)
    geminiLiveWindow.addView(titleTxt)

    local voiceLabel = TextView(service)
    voiceLabel.setText("اختر الصوت:")
    voiceLabel.setTextColor(0xFFCCCCCC)
    geminiLiveWindow.addView(voiceLabel)

    local voiceNames = ArrayList()
    local voiceIds = {}
    for _, v in ipairs(geminiLiveVoices) do
        voiceNames.add(v.name)
        table.insert(voiceIds, v.id)
    end
    local voiceAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, voiceNames)
    voiceAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local voiceSpinner = Spinner(service)
    voiceSpinner.setAdapter(voiceAdapter)

    local currVoiceIdx = 0
    for i, id in ipairs(voiceIds) do
        if id == selectedGeminiLiveVoice then currVoiceIdx = i - 1; break end
    end
    voiceSpinner.setSelection(currVoiceIdx)
    voiceSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(parent, view, position, id)
            selectedGeminiLiveVoice = voiceIds[position + 1]
        end
    })
    geminiLiveWindow.addView(voiceSpinner)

    local statusTxt = TextView(service)
    statusTxt.setText("الحالة: جاهز")
    statusTxt.setTextColor(0xFF00FF00)
    statusTxt.setGravity(Gravity.CENTER)
    statusTxt.setPadding(0, 30, 0, 30)
    geminiLiveWindow.addView(statusTxt)

    local startBtn = Button(service)
    startBtn.setText("🚀 بدء البث")
    styleButton(startBtn, "primary")
    startBtn.setOnClickListener(function()
        if not isGeminiLiveRunning then
            startGeminiLive(selectedGeminiLiveVoice, selectedGeminiLiveModelId)
            startBtn.setText("🛑 إيقاف البث")
            styleButton(startBtn, "danger")
            statusTxt.setText("الحالة: متصل")
        else
            stopGeminiLive()
            startBtn.setText("🚀 بدء البث")
            styleButton(startBtn, "primary")
            statusTxt.setText("الحالة: جاهز")
        end
    end)
    geminiLiveWindow.addView(startBtn)

    local closeBtn = Button(service)
    closeBtn.setText("❌ إغلاق")
    styleButton(closeBtn, "secondary")
    closeBtn.setOnClickListener(function()
        if isGeminiLiveRunning then stopGeminiLive() end
        if geminiLiveWindow then
            pcall(function() wm.removeView(geminiLiveWindow) end)
            geminiLiveWindow = nil
        end
        openMainWindow()
    end)
    local closeParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    closeParams.topMargin = 20
    geminiLiveWindow.addView(closeBtn, closeParams)

    local p = WindowManager.LayoutParams()
    p.width = WindowManager.LayoutParams.MATCH_PARENT
    p.height = WindowManager.LayoutParams.WRAP_CONTENT
    p.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY
    p.flags = WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
    p.format = PixelFormat.TRANSLUCENT
    p.gravity = Gravity.CENTER
    pcall(function() wm.addView(geminiLiveWindow, p) end)
    end)
    if not success then service.asyncSpeak("خطأ أثناء فتح النافذة: " .. tostring(err)); print(err) end
end

-- **Global UI Handler**
mainHandler = Handler(Looper.getMainLooper())

-- **Global Variables**
stopDictation = false
speechRecord = nil
recognizer = nil
local settingsDialog = nil
local resultWindow = nil
local globalResultContentTextView = nil
isDescribingImage = false
local imageQueryRecognizer = nil
local floatingSettingsBtn = nil
local summaryWindow = nil
local summaryQueryRecognizer = nil

-- **Set Audio Focus**
if service and service.setAsyncAudioFocus then
    local success, err = pcall(function()
        service.setAsyncAudioFocus(true)
    end)
end

-- ### UI Helpers for Professional Dark Mode ###
function styleEditText(et)
    local bg = GradientDrawable()
    bg.setColor(0xFF1E1E1E)
    bg.setCornerRadius(15)
    bg.setStroke(2, 0xFF444444)
    et.setBackgroundDrawable(bg)
    et.setTextColor(0xFFFFFFFF)
    et.setHintTextColor(0xFF888888)
    et.setPadding(25, 25, 25, 25)
end

-- UI/UX Helpers for Settings Organization
function createCard(parent)
    local card = LinearLayout(service)
    card.setOrientation(LinearLayout.VERTICAL)
    local bg = GradientDrawable()
    bg.setColor(0xFF1E1E1E)
    bg.setCornerRadius(30)
    card.setBackgroundDrawable(bg)
    local params = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    params.setMargins(0, 0, 0, 40)
    card.setLayoutParams(params)
    card.setPadding(40, 40, 40, 40)
    parent.addView(card)
    return card
end

function createSettingRow(text, control, parent)
    local row = LinearLayout(service)
    row.setOrientation(LinearLayout.HORIZONTAL)
    row.setGravity(Gravity.CENTER_VERTICAL)
    row.setPadding(0, 20, 0, 20)
    
    local txt = TextView(service)
    txt.setText(text)
    txt.setTextSize(16)
    txt.setTextColor(0xFFE0E0E0)
    local lp = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
    row.addView(txt, lp)
    
    row.addView(control)
    parent.addView(row)
end

function createChatBubble(text, isUser)
    local msgContainer = LinearLayout(service)
    msgContainer.setOrientation(LinearLayout.VERTICAL)
    local params = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    params.setMargins(10, 15, 10, 15)
    msgContainer.setLayoutParams(params)
    
    local tv = TextView(service)
    tv.setText(text)
    tv.setTextIsSelectable(true)
    tv.setTextSize(16)
    tv.setPadding(35, 25, 35, 25)
    
    local bgShape = GradientDrawable()
    bgShape.setCornerRadius(25)
    
    local tvParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    if isUser then
        tv.setTextColor(0xFFFFFFFF)
        bgShape.setColor(0xFF1976D2) -- Blueish for user
        tvParams.gravity = Gravity.END | Gravity.RIGHT
        tvParams.leftMargin = 80 -- Push from left
    else
        tv.setTextColor(0xFFE0E0E0)
        bgShape.setColor(0xFF2C2C2C) -- Dark Gray for AI
        bgShape.setStroke(2, 0xFF444444)
        tvParams.gravity = Gravity.START | Gravity.LEFT
        tvParams.rightMargin = 80 -- Push from right
    end
    tv.setBackgroundDrawable(bgShape)
    tv.setLayoutParams(tvParams)
    
    msgContainer.addView(tv)
    return msgContainer
end

-- ### Storage and Path Helpers

-- 1. دالة للتحقق من إمكانية الوصول لمسار معين (مهمة جداً للـ SD Card)
function canAccessPath(path)
    local success, result = pcall(function()
        local dir = File(path)
        if dir.exists() and dir.isDirectory() and dir.canRead() then
            local files = dir.listFiles()
            return files ~= nil
        end
        return false
    end)
    return success and result
end

-- 2. دالة الحصول على جميع مسارات الذاكرة المتاحة في النظام
function getStoragePaths()
    local paths = {}
    local addedPaths = {}

    -- أولاً: الذاكرة الداخلية الأساسية
    local internalPath = "/storage/emulated/0/"
    if canAccessPath(internalPath) then
        table.insert(paths, {
            name = "📱 الذاكرة الداخلية",
            path = internalPath,
            icon = "📱"
        })
        addedPaths[internalPath] = true
    end

    -- ثانياً: البحث عن الذاكرة الخارجية (SD Card) بطرق مختلفة
    -- الطريقة الأولى: عبر getExternalFilesDirs
    pcall(function()
        -- Attempt to use service first, then activity if available
        local context = service or activity
        local externalDirs = context.getExternalFilesDirs(nil)
        if externalDirs then
            for i = 0, #externalDirs - 1 do
                local dir = externalDirs[i]
                if dir then
                    local fullPath = tostring(dir.getAbsolutePath())
                    local rootPath = fullPath:match("(/storage/[^/]+)")
                    if rootPath and rootPath ~= "/storage/emulated" then
                        local pathWithSlash = rootPath .. "/"
                        if not addedPaths[pathWithSlash] and canAccessPath(rootPath) then
                            local name = rootPath:match("/storage/(.+)")
                            table.insert(paths, {
                                name = "💾 ذاكرة خارجية (" .. (name or "SD Card") .. ")",
                                path = pathWithSlash,
                                icon = "💾"
                            })
                            addedPaths[pathWithSlash] = true
                        end
                    end
                end
            end
        end
    end)

    -- الطريقة الثانية: فحص مجلد /storage/ مباشرة (لأن بعض الأجهزة لا تظهر في الطريقة الأولى)
    pcall(function()
        local storageDir = File("/storage/")
        if storageDir.exists() and storageDir.isDirectory() then
            local files = storageDir.listFiles()
            if files then
                for i = 0, #files - 1 do
                    local file = files[i]
                    local name = file.getName()
                    local fullPath = file.getAbsolutePath() .. "/"

                    if name ~= "emulated" and
                       name ~= "self" and
                       not name:match("^%.") and
                       file.isDirectory() and
                       not addedPaths[fullPath] then

                        if canAccessPath(fullPath) then
                            table.insert(paths, {
                                name = "💾 ذاكرة خارجية (" .. name .. ")",
                                path = fullPath,
                                icon = "💾"
                            })
                            addedPaths[fullPath] = true
                        end
                    end
                end
            end
        end
    end)

    return paths
end

-- ### Helper Functions

-- **Get Language Details by Code**
function getLanguageDetails(langCode)
    for _, lang in ipairs(supportedLanguages) do
        if lang.code == langCode then
            return lang
        end
    end
    return { code = langCode, name = langCode, human_readable_for_gemini = langCode:gsub("%-.*", ""):gsub("^%l", string.upper) }
end

-- **Localized Feedback Strings**
function getFeedbackString(key, langCode, ...)
    local args = {...}
    local ar_strings = {
        summarize_start = "بدء تلخيص النص.",
        summarize_success = "اكتمل التلخيص.",
        summarize_fail_no_text = "فشل التلخيص: لا نص على الشاشة.",
        summarize_fail_api = "فشل التلخيص: %s",
        image_desc_start = "جاري التقاط ووصف الصورة...",
        image_desc_success = "اكتمل وصف الصورة.",
        image_desc_fail_screenshot = "فشل وصف الصورة: تعذر التقاط الشاشة.",
        image_desc_fail_api = "فشل وصف الصورة: %s",
        dictation_insert_verify = "سيتم كتابة: %s",
        dictation_insert_verify_translated = "النص المترجم الذي سيُدرج: %s",
        api_key_missing_for_feature = "ميزة %s تتطلب مفتاح API.",
        command_stop = "تم إيقاف الإملاء الصوتي.",
        command_settings = "فتح الإعدادات.",
        command_processing = "جاري معالجة: %s...",
        error_speech_unavailable = "خدمة التعرف على الصوت غير متاحة.",
        settings_saved = "تم حفظ الإعدادات.",
        warning_draw_overlay_permission = "تحذير: إذن الظهور فوق التطبيقات الأخرى غير مفعل. الزر العائم لن يظهر.",
        image_query_pending = "انتظر العملية السابقة للاستعلام عن الصورة.",
        image_query_no_data = "خطأ: بيانات الصورة غير متاحة للاستعلام.",
        image_query_listening = "⏳ جارٍ الاستماع...",
        image_query_speak_now = "...تحدث الآن",
        image_query_processing = "🤔 جاري المعالجة...",
        image_query_error_listening = "خطأ استماع: %s",
        image_query_no_query_recognized = "لم يتم التعرف على استعلام.",
        image_query_no_query_heard = "لم أتمكن من سماع استعلامك.",
        image_query_searching = "⏳ جاري البحث...",
        image_query_answered = "تمت الإجابة.",
        copy_desc = "تم نسخ الوصف.",
        copy_ocr = "تم نسخ النص المستخرج.",
        copy_answer = "تم نسخ الإجابة.",
        copy_general_text = "تم نسخ النص إلى الحافظة.",
        dictation_lang_changed = "تم تغيير لغة الإملاء إلى %s.",
        gemini_model_selected = "تم اختيار موديل: %s.",
        image_desc_already_running = "وصف صورة آخر قيد التنفيذ بالفعل.",
        error_translation_lang_invalid = "خطأ: لغات الترجمة المحددة (المصدر أو الهدف) غير صالحة.",
        tts_engine_changed = "تم تغيير محرك النطق إلى %s.",
        tts_custom_enabled = "تم تفعيل النطق المخصص لردود الذكاء الاصطناعي.",
        tts_custom_disabled = "تم تعطيل النطق المخصص. سيتم استخدام نطق النظام.",
        tts_voice_changed = "تم تغيير صوت النطق إلى %s.",
        tts_voice_selection_placeholder = "(الصوت الافتراضي للم المحرك)",
        tts_no_voices_for_engine = "(لا توجد أصوات متاحة لهذا المحرك)",
        tts_select_engine_first_for_voices = "(اختر محركًا أولاً لعرض الأصوات)"
    }

    local strings_to_use = ar_strings
    local S = strings_to_use[key] or key
    if S:match("%%s") and #args > 0 then
        local safe_args = {}
        for i = 1, #args do safe_args[i] = tostring(args[i]) end
        return string.format(S, unpack(safe_args))
    else
        return S
    end
end


-- **Floating Button Management**
function createAndShowFloatingButton()
    if floatingSettingsBtn or not showFloatingSettingsButtonEnabled then return end
    if not Settings.canDrawOverlays(service) then
         service.asyncSpeak(getFeedbackString("warning_draw_overlay_permission", selectedLanguage))
         return
    end
    floatingSettingsBtn = Button(service)
    floatingSettingsBtn.setText("⚙️") 
    floatingSettingsBtn.setContentDescription(getFeedbackString("command_settings", selectedLanguage))
    local bg = GradientDrawable()
    bg.setCornerRadius(100)
    bg.setColor(0xFF1E1E1E)
    bg.setStroke(3, 0xFF64B5F6)
    floatingSettingsBtn.setBackgroundDrawable(bg)
    floatingSettingsBtn.setPadding(25, 25, 25, 25)
    floatingSettingsBtn.setOnClickListener(function() openMainWindow() end)
    local params = WindowManager.LayoutParams()
    params.width = WindowManager.LayoutParams.WRAP_CONTENT; params.height = WindowManager.LayoutParams.WRAP_CONTENT
    params.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY
    params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
    params.format = PixelFormat.TRANSLUCENT; params.gravity = Gravity.TOP | Gravity.START
    params.x = 20; params.y = 100
    local success, err = pcall(function() wm.addView(floatingSettingsBtn, params) end)
    if not success then floatingSettingsBtn = nil end
end

function removeFloatingButton()
    if floatingSettingsBtn then
        local success, err = pcall(function() wm.removeView(floatingSettingsBtn) end)
        floatingSettingsBtn = nil
    end
end

-- **Cleanup Resources**
function cleanupResources()
    stopDictation = true
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil end
    if imageQueryRecognizer then pcall(function() imageQueryRecognizer.destroy() end); imageQueryRecognizer = nil end
    if summaryQueryRecognizer then pcall(function() summaryQueryRecognizer.destroy() end); summaryQueryRecognizer = nil end
    if settingsDialog then local r = pcall(function() wm.removeView(settingsDialog) end); if r then settingsDialog = nil end end
    if resultWindow then local r = pcall(function() wm.removeView(resultWindow) end); if r then resultWindow = nil; globalResultContentTextView = nil end end
    if summaryWindow then local r = pcall(function() wm.removeView(summaryWindow) end); if r then summaryWindow = nil end end
    removeFloatingButton()
    speechRecord = nil

    collectgarbage("collect")
end

-- **Check if Text is Arabic**
function isArabicText(text)
    if not text then return false end
    return text:match("[\216-\219][\128-\191]") ~= nil
end

-- ### TTS Helper Functions
function getLocaleForLangCode(langCodeStr)
    if not langCodeStr or langCodeStr == "" then return Locale.getDefault() end
    local lang = langCodeStr:lower()

    if lang == "ar" then return Locale("ar") end
    if lang == "en" then return Locale.ENGLISH end
    if lang == "fr-fr" then return Locale.FRANCE end
    if lang == "fr" then return Locale.FRENCH end

    local l, c = lang:match("([a-z][a-z])-([a-z][a-z])")
    if l and c then return Locale(l, c:upper()) end
    l, c = lang:match("([a-z][a-z])_([a-z][a-z])")
    if l and c then return Locale(l, c:upper()) end

    if #lang == 2 then return Locale(lang) end
    return Locale.getDefault()
end

function speakAIResponseViaCustomTTS(text, langCodeForSpeech)
    service.asyncSpeak(text)
end

function openPdfTtsSettings(onSaved)
    local settingsWin = LinearLayout(service)
    settingsWin.setOrientation(LinearLayout.VERTICAL)
    settingsWin.setBackgroundColor(0xFF121212)
    settingsWin.setPadding(35,35,35,35)

    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)
    contentL.setPadding(10,10,10,10)
    scrollV.addView(contentL)
    settingsWin.addView(scrollV)

    local titleTxt = TextView(service)
    titleTxt.setText("إعدادات قارئ PDF الصوتي 🎧")
    titleTxt.setTextSize(22)
    titleTxt.setTypeface(nil, Typeface.BOLD)
    titleTxt.setTextColor(0xFFFFFFFF)
    titleTxt.setGravity(Gravity.CENTER_HORIZONTAL)
    titleTxt.setPadding(0,0,0,30)
    contentL.addView(titleTxt)

    local function addLabel(text)
        local lbl = TextView(service)
        lbl.setText(text)
        lbl.setTextSize(16)
        lbl.setTextColor(0xFFB0B0B0)
        lbl.setPadding(0, 20, 0, 10)
        contentL.addView(lbl)
    end

    addLabel("محرك النطق:")
    local engineNames = ArrayList()
    local enginePackages = {}
    local tempTts = TextToSpeech(service, nil)
    local engines = tempTts.getEngines()
    for i = 0, engines.size() - 1 do
        local info = engines.get(i)
        engineNames.add(info.label)
        table.insert(enginePackages, info.name)
    end
    tempTts.shutdown()

    local engineSpinner = Spinner(service)
    local engineAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, engineNames)
    engineAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    engineSpinner.setAdapter(engineAdapter)

    local currEngineIdx = 0
    for i, pkg in ipairs(enginePackages) do
        if pkg == pdfTtsEngine then currEngineIdx = i - 1; break end
    end
    engineSpinner.setSelection(currEngineIdx)
    contentL.addView(engineSpinner)

    addLabel("صوت المحرك:")
    local voiceSpinner = Spinner(service)
    contentL.addView(voiceSpinner)

    local currentVoices = {}
    local function updateVoices(enginePkg)
        local voiceNames = ArrayList()
        currentVoices = {}

        mainHandler.post(luajava.createProxy("java.lang.Runnable", {
            run = function()
                local ttsForVoices
                local listener = TextToSpeech.OnInitListener{
                    onInit = function(status)
                        if status == TextToSpeech.SUCCESS and ttsForVoices then
                            local voices = nil
                            pcall(function() voices = ttsForVoices.getVoices() end)

                            if voices then
                                local it = voices.iterator()
                                while it.hasNext() do
                                    local v = it.next()
                                    if v then
                                        local vName = v.getName()
                                        local locale = v.getLocale()
                                        local label = vName
                                        if locale then
                                            label = vName .. " (" .. locale.getDisplayName() .. ")"
                                        end
                                        voiceNames.add(label)
                                        table.insert(currentVoices, vName)
                                    end
                                end
                            end
                        end

                        -- Add fallback if no voices found
                        if voiceNames.size() == 0 then
                            voiceNames.add("(صوت المحرك الافتراضي)")
                            table.insert(currentVoices, "")
                        end

                        mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                            run = function()
                                local voiceAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, voiceNames)
                                voiceAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
                                voiceSpinner.setAdapter(voiceAdapter)
                                local currVoiceIdx = -1
                                if pdfTtsVoiceName and pdfTtsVoiceName ~= "" then
                                    for i, name in ipairs(currentVoices) do
                                        if name == pdfTtsVoiceName then currVoiceIdx = i - 1; break end
                                    end
                                end
                                if currVoiceIdx >= 0 then voiceSpinner.setSelection(currVoiceIdx) end
                                if ttsForVoices then pcall(function() ttsForVoices.shutdown() end) end
                            end
                        }))
                    end
                }
                ttsForVoices = TextToSpeech(service, listener, tostring(enginePkg))
            end
        }))
    end

    engineSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(parent, view, position, id)
            updateVoices(enginePackages[position + 1])
        end
    })

    addLabel("سرعة الصوت:")
    local speedNames = ArrayList()
    local speedValues = {0.5, 1.0, 1.5, 2.0, 2.5, 3.0}
    for _, s in ipairs(speedValues) do speedNames.add(tostring(s) .. "x") end
    local speedSpinner = Spinner(service)
    local speedAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, speedNames)
    speedAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    speedSpinner.setAdapter(speedAdapter)
    local currSpeedIdx = 1 -- Default to 1.0x
    for i, s in ipairs(speedValues) do
        if math.abs(s - (pdfTtsSpeed or 1.0)) < 0.01 then currSpeedIdx = i - 1; break end
    end
    speedSpinner.setSelection(currSpeedIdx)
    contentL.addView(speedSpinner)

    local switchAutoNext = Switch(service)
    switchAutoNext.setChecked(pdfTtsAutoNext)
    createSettingRow("الانتقال التلقائي للصفحة التالية", switchAutoNext, contentL)

    local btnL = LinearLayout(service)
    btnL.setOrientation(LinearLayout.HORIZONTAL)
    btnL.setGravity(Gravity.CENTER)
    btnL.setPadding(0, 40, 0, 10)

    local saveBtn = Button(service)
    saveBtn.setText("💾 حفظ")
    styleButton(saveBtn, "primary")
    saveBtn.setOnClickListener(function()
        pdfTtsEngine = enginePackages[engineSpinner.getSelectedItemPosition() + 1]
        local vPos = voiceSpinner.getSelectedItemPosition()
        if vPos >= 0 then
            pdfTtsVoiceName = currentVoices[vPos + 1]
        end
        pdfTtsSpeed = speedValues[speedSpinner.getSelectedItemPosition() + 1] or 1.0
        pdfTtsAutoNext = switchAutoNext.isChecked()

        local editor = prefs.edit()
        editor.putString("pdfTtsEngine", pdfTtsEngine)
        editor.putString("pdfTtsVoiceName", pdfTtsVoiceName)
        editor.putFloat("pdfTtsSpeed", pdfTtsSpeed)
        editor.putBoolean("pdfTtsAutoNext", pdfTtsAutoNext)
        editor.apply()

        service.asyncSpeak("تم حفظ إعدادات القارئ.")
        if onSaved then onSaved() end
        pcall(function() wm.removeView(settingsWin) end)
    end)
    local lpSave = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
    lpSave.rightMargin = 10
    btnL.addView(saveBtn, lpSave)

    local closeBtn = Button(service)
    closeBtn.setText("❌ إغلاق")
    styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function() pcall(function() wm.removeView(settingsWin) end) end)
    btnL.addView(closeBtn, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0))

    contentL.addView(btnL)

    local winP = WindowManager.LayoutParams()
    winP.width = WindowManager.LayoutParams.MATCH_PARENT
    winP.height = WindowManager.LayoutParams.WRAP_CONTENT
    winP.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY
    winP.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
    winP.format = PixelFormat.TRANSLUCENT
    winP.gravity = Gravity.CENTER
    pcall(function() wm.addView(settingsWin, winP) end)
end

-- ### UNIFIED AI REQUEST FUNCTION (Supports Gemini & Groq) ###
function makeAiRequest(prompt, systemInstruction, imageBase64, modelIdOverride, callback)
    local useGroq = true -- Default to Groq for text
    if imageBase64 then useGroq = false end -- Images use Gemini
    if modelIdOverride then
        if string.match(modelIdOverride:lower(), "gemini") then useGroq = false else useGroq = true end
    end

    local apiKey = useGroq and groqApiKey or geminiApiKey
    local model = modelIdOverride or (useGroq and selectedGroqModelId or selectedGeminiModelId)

    if apiKey == "" then
        callback("Error: API Key is missing for " .. (useGroq and "Groq" or "Gemini"))
        return
    end

    local fastSystemInstruction = "Return ONLY the direct result. No explanations, no markdown." 
    local combinedSystemInstruction = fastSystemInstruction
    if systemInstruction then
        combinedSystemInstruction = fastSystemInstruction .. " " .. systemInstruction
    end

    local url, requestBody, headers

    if useGroq then
        url = "https://api.groq.com/openai/v1/chat/completions"
        headers = {
            ["Authorization"] = "Bearer " .. apiKey,["Content-Type"] = "application/json"
        }

        local messages = {}
        if combinedSystemInstruction then
             table.insert(messages, { role = "system", content = combinedSystemInstruction })
        end

        local userContent = {}
        if imageBase64 then
            table.insert(userContent, { type = "text", text = prompt })
            table.insert(userContent, { type = "image_url", image_url = { url = "data:image/png;base64," .. imageBase64 } })
            table.insert(messages, { role = "user", content = userContent })
        else
            table.insert(messages, { role = "user", content = prompt })
        end

        local jsonMessages = toJavaJSON(messages)
        local root = JSONObject()
        root.put("model", model)
        root.put("messages", jsonMessages)
        root.put("temperature", 0.3)
        root.put("max_tokens", 1024) 
        requestBody = root.toString()
        
    else
        url = "https://generativelanguage.googleapis.com/v1beta/models/" .. model .. ":generateContent?key=" .. apiKey
        headers = {["Content-Type"] = "application/json"}
        local parts = {}
        if combinedSystemInstruction then
            table.insert(parts, { text = "System: " .. combinedSystemInstruction })
        end
        table.insert(parts, { text = prompt })
        if imageBase64 then
            table.insert(parts, { inline_data = { mime_type = "image/png", data = imageBase64 } })
        end
        
        local partsArray = toJavaJSON(parts)
        local contentObj = JSONObject()
        contentObj.put("parts", partsArray)
        local contentsArray = JSONArray()
        contentsArray.put(contentObj)
        
        local root = JSONObject()
        root.put("contents", contentsArray)
        
        local genConfig = JSONObject()
        genConfig.put("temperature", 0.3)
        genConfig.put("candidateCount", 1)
        root.put("generationConfig", genConfig)

        requestBody = root.toString()
    end

    Http.post(url, requestBody, headers, function(status, response)
        if status == 200 then
            local success, jsonResponse = pcall(function() return JSONObject(response) end)
            if success and jsonResponse then
                local resultText = nil
                if useGroq then
                    if jsonResponse.has("choices") and jsonResponse.getJSONArray("choices").length() > 0 then
                        local choice = jsonResponse.getJSONArray("choices").getJSONObject(0)
                        if choice.has("message") and choice.getJSONObject("message").has("content") then
                            resultText = choice.getJSONObject("message").getString("content")
                        end
                    end
                else
                    if jsonResponse.has("candidates") and jsonResponse.getJSONArray("candidates").length() > 0 then
                        local cand = jsonResponse.getJSONArray("candidates").getJSONObject(0)
                        if cand.has("content") and cand.getJSONObject("content").has("parts") then
                             local parts = cand.getJSONObject("content").getJSONArray("parts")
                             if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                                 resultText = parts.getJSONObject(0).getString("text")
                             end
                        end
                    end
                end

                if resultText then callback(resultText); return end
            end
        end
        callback("AI Request Failed (Status: " .. status .. ")")
    end)
end

-- ### Feature Wrapper Functions
function correctWithGemini(text, callback)
    local prompt = "Fix text and add suitable emojis. Return ONLY the text:"
    if not geminiCorrectionEnabled then return callback(text) end
    makeAiRequest(prompt .. "\n" .. text, nil, nil, nil, callback)
end

function translateTextWithGemini_New(textToTranslate, sourceLang, targetLang, callback)
    local prompt = "Translate to " .. targetLang .. ". Return ONLY the translation:"
    makeAiRequest(prompt .. "\n" .. textToTranslate, nil, nil, nil, callback)
end

function summarizeWithGemini(text, callback)
    local prompt = [[Summarize in Arabic bullets. Concise.]]
    makeAiRequest(prompt .. "\n" .. text, nil, nil, nil, callback)
end

function describeImageWithGemini(base64Image, callback)
    local prompt = [[Describe in Arabic & extract text.
Format:
Description: ...
Text: ...]]
    makeAiRequest(prompt, nil, base64Image, nil, function(result)
        callback(result, base64Image)
    end)
end

function queryImageWithGemini(base64Image, userQuery, historyText, callback)
    local prompt = (historyText ~= "" and ("History:\n" .. historyText .. "\n") or "") .. "Question: " .. userQuery
    makeAiRequest(prompt, "Answer concisely.", base64Image, nil, callback)
end

function querySummaryWithGemini(summary, history, userQuery, callback)
    local prompt = "Summary: " .. summary .. "\n\nHistory:\n" .. history .. "\n\nUser: " .. userQuery
    makeAiRequest(prompt, "Answer about summary. Concise.", nil, nil, callback)
end

function waitForGeminiFileActive(fileUri, apiKey, callback)
    local url = fileUri .. "?key=" .. apiKey
    Http.get(url, nil, "UTF-8", nil, function(status, response)
        if status == 200 then
            local s, j = pcall(function() return JSONObject(response) end)
            if s and j.has("state") then
                local state = j.getString("state")
                if state == "ACTIVE" then
                    callback(true)
                elseif state == "FAILED" then
                    local errDetail = ""
                    if j.has("error") then errDetail = j.getJSONObject("error").toString() end
                    if j.has("failed_reason") then errDetail = errDetail .. " Reason: " .. j.getString("failed_reason") end
                    callback(false, "File processing failed: " .. state .. " " .. errDetail)
                else
                    -- Still processing, poll again
                    mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {
                        run = function() waitForGeminiFileActive(fileUri, apiKey, callback) end
                    }), 5000)
                end
            else
                callback(false, "Invalid status response: " .. tostring(response))
            end
        else
            callback(false, "Status check failed (" .. status .. "): " .. tostring(response))
        end
    end)
end

function uploadFileToGemini(filePath, mimeType, apiKey, callback)
    import "java.lang.Thread"
    import "java.lang.Runnable"
    import "java.net.URL"
    import "java.net.HttpURLConnection"
    import "java.io.File"
    import "java.io.FileInputStream"
    import "java.io.OutputStreamWriter"
    import "android.os.Handler"
    import "android.os.Looper"
    import "org.json.JSONObject"

    local t = Thread(Runnable{
        run = function()
            local success, err = pcall(function()
                local file = File(filePath)
                local fileName = file.getName()
                local fileSize = file.length()
                local fileSizeStr = string.format("%.0f", fileSize)
                local Long = luajava.bindClass("java.lang.Long")

                -- Step 1: Initialize Resumable Upload
                local initUrl = URL("https://generativelanguage.googleapis.com/upload/v1beta/files?key=" .. apiKey)
                local conn = initUrl.openConnection()
                conn.setRequestMethod("POST")
                conn.setDoOutput(true)
                conn.setRequestProperty("X-Goog-Upload-Protocol", "resumable")
                conn.setRequestProperty("X-Goog-Upload-Command", "start")
                conn.setRequestProperty("X-Goog-Upload-Header-Content-Length", fileSizeStr)
                conn.setRequestProperty("X-Goog-Upload-Header-Content-Type", mimeType)
                conn.setRequestProperty("Content-Type", "application/json")

                local metadata = JSONObject()
                local fileObj = JSONObject()
                local sanitizedName = fileName:gsub("[^%w]", ""):sub(1, 30)
                fileObj.put("display_name", sanitizedName)
                metadata.put("file", fileObj)

                local osw = OutputStreamWriter(conn.getOutputStream(), "UTF-8")
                osw.write(metadata.toString())
                osw.flush()
                osw.close()

                local responseCode = conn.getResponseCode()
                if responseCode ~= 200 then
                    local errorMsg = "Upload initialization failed: " .. responseCode
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function() callback("Error: " .. errorMsg) end
                    }))
                    return
                end

                local uploadUrl = conn.getHeaderField("X-Goog-Upload-URL")
                conn.disconnect()

                -- Step 2: Upload File Bytes
                local putUrl = URL(uploadUrl)
                local putConn = putUrl.openConnection()
                putConn.setRequestMethod("PUT") -- PUT is standard for resumable upload parts
                putConn.setDoOutput(true)
                putConn.setFixedLengthStreamingMode(Long.valueOf(fileSizeStr))
                putConn.setRequestProperty("X-Goog-Upload-Protocol", "resumable")
                putConn.setRequestProperty("X-Goog-Upload-Command", "upload, finalize")
                putConn.setRequestProperty("X-Goog-Upload-Offset", "0")

                local os = putConn.getOutputStream()
                local fis = FileInputStream(file)
                local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, 8192)
                local read = fis.read(buffer)
                while read ~= -1 do
                    os.write(buffer, 0, read)
                    read = fis.read(buffer)
                end
                fis.close()
                os.flush()
                os.close()

                local finalCode = putConn.getResponseCode()
                local response = ""
                local is = (finalCode == 200 or finalCode == 201) and putConn.getInputStream() or putConn.getErrorStream()
                local br = BufferedReader(InputStreamReader(is))
                local line = br.readLine()
                while line ~= nil do response = response .. line; line = br.readLine() end
                br.close()
                putConn.disconnect()

                mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                    run = function()
                        if finalCode == 200 or finalCode == 201 then
                            local s, j = pcall(function() return JSONObject(response) end)
                            if s and j.has("file") then
                                local fileUri = j.getJSONObject("file").getString("uri")
                                callback(fileUri)
                            else
                                callback("Error: Invalid upload response " .. response)
                            end
                        else
                            callback("Error: Upload failed " .. finalCode .. " - " .. response)
                        end
                    end
                    }))
            end)
            if not success then
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function() callback("Error Exception: " .. tostring(err), true) end
                    }))
            end
        end
    })
    t.start()
end

function transcribeAudio(filePath, callback)
    local provider = "groq"
    local modId = "whisper-large-v3"
    local found = false
    local audioModelIdToUse = selectedAudioModelId or defaultAudioModelId

    for _, m in ipairs(audioModels) do
        if m.id == audioModelIdToUse then
            provider = m.provider
            modId = m.id
            found = true
            break
        end
    end
    -- Fallback for custom model IDs
    if not found then
        local lowerId = audioModelIdToUse:lower()
        if lowerId:match("gemini") then provider = "gemini"
        elseif lowerId:match("wit") then provider = "wit"
        else provider = "groq" end
        modId = audioModelIdToUse
    end

    local providerName = "Google Gemini"
    if provider == "groq" then providerName = "Groq Whisper"
    elseif provider == "wit" then providerName = "Facebook Wit.ai" end

    service.asyncSpeak("استخدام مزود: " .. providerName .. ". موديل: " .. modId)

    import "java.lang.Thread"
    import "java.lang.Runnable"
    import "java.net.URL"
    import "java.io.File"
    import "java.io.FileInputStream"
    import "java.io.DataOutputStream"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.System"
    import "android.os.Handler"
    import "android.os.Looper"
    import "java.io.ByteArrayOutputStream"
    import "android.util.Base64"

    if provider == "groq" then
        if groqApiKey == "" then callback("Error: Groq API Key is missing", true); return end
        local t = Thread(Runnable{
            run = function()
                local success, err = pcall(function()
                    local file = File(filePath)
                    local url = URL(tostring("https://api.groq.com/openai/v1/audio/transcriptions"))
                    local conn = url:openConnection()
                    conn:setChunkedStreamingMode(8192)
                    local boundary = "*****" .. tostring(System.currentTimeMillis()) .. "*****"
                    conn:setDoInput(true)
                    conn:setDoOutput(true)
                    conn:setUseCaches(false)
                    conn:setRequestMethod("POST")
                    conn:setRequestProperty("Connection", "Keep-Alive")
                    conn:setRequestProperty("Authorization", "Bearer " .. groqApiKey)
                    conn:setRequestProperty("Content-Type", "multipart/form-data;boundary=" .. boundary)
                    local dos = DataOutputStream(conn:getOutputStream())
                    dos:writeBytes("--" .. boundary .. "\r\n")
                    dos:writeBytes("Content-Disposition: form-data; name=\"model\"\r\n\r\n")
                    dos:writeBytes(tostring(modId) .. "\r\n")
                    dos:writeBytes("--" .. boundary .. "\r\n")
                    dos:writeBytes("Content-Disposition: form-data; name=\"file\"; filename=\"" .. file:getName() .. "\"\r\n")
                    dos:writeBytes("Content-Type: application/octet-stream\r\n\r\n")
                    local fileInputStream = FileInputStream(file)
                    local bufferSize = 4096
                    local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, bufferSize)
                    local bytesRead = fileInputStream:read(buffer)
                    while bytesRead > 0 do
                        dos:write(buffer, 0, bytesRead)
                        bytesRead = fileInputStream:read(buffer)
                    end
                    fileInputStream:close()
                    dos:writeBytes("\r\n")
                    dos:writeBytes("--" .. boundary .. "--\r\n")
                    dos:flush()
                    dos:close()
                    local responseCode = conn:getResponseCode()
                    local is = (responseCode == 200) and conn:getInputStream() or conn:getErrorStream()
                    local br = BufferedReader(InputStreamReader(is))
                    local response = ""
                    local line = br:readLine()
                    while line ~= nil do response = response .. line; line = br:readLine() end
                    br:close()
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function()
                            if responseCode == 200 then
                                local s, j = pcall(function() return JSONObject(response) end)
                                if s and j:has("text") then callback(j:getString("text"), true) else callback("Error: " .. response, true) end
                            else callback("Error: " .. responseCode .. " - " .. response, true) end
                        end
                    }))
                end)
                if not success then
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function() callback("Error Exception: " .. tostring(err), true) end
                    }))
                end
            end
        })
        t.start()
    elseif provider == "gemini" then
        if geminiApiKey == "" then callback("Error: Gemini API Key is missing", true); return end
        local ext = filePath:match("%.([^%.]+)$") or "mp3"
        local mime = "audio/" .. ext
        if ext == "m4a" then mime = "audio/mp4" end

        uploadFileToGemini(filePath, mime, geminiApiKey, function(fileUriOrError)
            if fileUriOrError:match("^Error:") then
                callback(fileUriOrError, true)
                return
            end

            local prompt = "قم بتفريغ هذا الملف الصوتي بدقة. اكتب النص المستخرج فقط."
            local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. modId .. ":generateContent?key=" .. geminiApiKey
            local headers = {["Content-Type"] = "application/json"}

            local root = JSONObject()
            local contentObj = JSONObject()
            local partsArray = JSONArray()

            local filePart = JSONObject()
            local fileData = JSONObject()
            fileData.put("mime_type", mime)
            fileData.put("file_uri", fileUriOrError)
            filePart.put("file_data", fileData)
            partsArray.put(filePart)

            local textPart = JSONObject()
            textPart.put("text", prompt)
            partsArray.put(textPart)

            contentObj.put("parts", partsArray)
            local contentsArray = JSONArray()
            contentsArray.put(contentObj)
            root.put("contents", contentsArray)

            Http.post(url, root.toString(), headers, function(status, response)
                if status == 200 then
                    local s, j = pcall(function() return JSONObject(response) end)
                    if s and j.has("candidates") then
                        local cands = j.getJSONArray("candidates")
                        if cands.length() > 0 then
                            local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                            if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                                callback(parts.getJSONObject(0).getString("text"), true)
                                return
                            end
                        end
                    end
                end
                callback("Error Gemini: " .. status .. " - " .. tostring(response), true)
            end)
        end)
    elseif provider == "wit" then
        if witApiKey == "" then callback("Error: Wit.ai API Key is missing", true); return end
        local t = Thread(Runnable{
            run = function()
                local success, err = pcall(function()
                    local ext = filePath:match("%.([^%.]+)$") or ""
                    ext = ext:lower()
                    local mime = "audio/wav"
                    if ext == "mp3" then mime = "audio/mpeg" 
                    elseif ext == "ogg" then mime = "audio/ogg"
                    elseif ext == "m4a" or ext == "aac" then mime = "audio/aac"
                    elseif ext == "raw" then mime = "audio/raw" end
                    
                    local url = URL(tostring("https://api.wit.ai/dictation?v=20240304"))
                    local conn = url:openConnection()
                    conn:setConnectTimeout(60000)
                    conn:setReadTimeout(300000)
                    conn:setDoInput(true)
                    conn:setDoOutput(true)
                    conn:setUseCaches(false)
                    conn:setRequestMethod("POST")
                    conn:setRequestProperty("Authorization", "Bearer " .. witApiKey)
                    conn:setRequestProperty("Content-Type", mime)
                    
                    conn:setChunkedStreamingMode(8192)
                    
                    local dos = DataOutputStream(conn:getOutputStream())
                    local file = File(filePath)
                    local fileInputStream = FileInputStream(file)
                    local bufferSize = 8192
                    local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, bufferSize)
                    local bytesRead = fileInputStream:read(buffer)
                    while bytesRead > 0 do
                        dos:write(buffer, 0, bytesRead)
                        dos:flush()
                        bytesRead = fileInputStream:read(buffer)
                    end
                    fileInputStream:close()
                    dos:close()
                    
                    local responseCode = conn:getResponseCode()
                    local is = (responseCode == 200) and conn:getInputStream() or conn:getErrorStream()
                    local br = BufferedReader(InputStreamReader(is))
                    local accumulatedFinals = ""
                    local lastText = ""
                    
                    local line = br:readLine()
                    local jsonBuffer = ""
                    while line ~= nil do 
                        jsonBuffer = jsonBuffer .. line .. "\n"
                        if line:match("}") then
                            local s, j = pcall(function() return JSONObject(jsonBuffer) end)
                            if s then
                                if j:has("text") then
                                    local currentText = j:getString("text")
                                    lastText = currentText
                                    local isFinal = j:has("is_final") and j:getBoolean("is_final")
                                    
                                    local displayStr = accumulatedFinals
                                    if isFinal then
                                        accumulatedFinals = accumulatedFinals .. (accumulatedFinals == "" and "" or " ") .. currentText
                                        displayStr = accumulatedFinals
                                    else
                                        displayStr = accumulatedFinals .. (accumulatedFinals == "" and "" or " ") .. currentText
                                    end
                                    
                                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                                        run = function()
                                            callback(displayStr, false)
                                        end
                                    }))
                                end
                                jsonBuffer = ""
                            end
                        end
                        line = br.readLine() 
                    end
                    br.close()
                    
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function()
                            if responseCode == 200 then
                                if accumulatedFinals == "" and lastText ~= "" then accumulatedFinals = lastText end
                                if accumulatedFinals == "" then accumulatedFinals = "تم الانتهاء ولم يتم التعرف على أي نص." end
                                callback(accumulatedFinals, true)
                            else 
                                local errMsg = "Error: " .. responseCode
                                if responseCode == 408 or responseCode == 413 then errMsg = "خطأ: الملف كبير جداً (Timeout). تم استخدام البث المباشر بنجاح لكن سيرفر فيسبوك رفض طول الملف." end
                                callback(errMsg, true) 
                            end
                        end
                    }))
                end)
                if not success then
                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                        run = function() callback("Error Exception: " .. tostring(err), true) end
                    }))
                end
            end
        })
        t.start()
    end
end

function parseImageDescription(response)
    local description, ocrText = "لم يتم العثور على وصف.", "لم يتم العثور على نص."
    if response then
        local dM = response:match("Description:%s*([^\r\n]+)"); local tM = response:match("Text:%s*([^\r\n]+)")
        if dM then description = dM end; if tM then ocrText = tM end
        if not dM and not tM and response:match("%S") then description = response; ocrText = ""
        elseif not dM and response:match("%S") and not tM and not response:match("Text:") then description = response end
    end
    return description, ocrText
end

if luaunit then
    _G.parseImageDescription = parseImageDescription
end

-- **Fetch Groq Models Dynamically**
function fetchGroqModels(callback)
    if not groqApiKey or groqApiKey == "" then
        service.asyncSpeak("يرجى إدخال مفتاح Groq API أولاً.")
        return
    end
    service.asyncSpeak("جاري جلب قائمة موديلات Groq...")
    local url = "https://api.groq.com/openai/v1/models"
    local headers = {["Authorization"] = "Bearer " .. groqApiKey}
    
    Http.get(url, nil, "UTF-8", headers, function(code, body)
        if code == 200 then
            local s, j = pcall(function() return JSONObject(body) end)
            if s and j and j.has("data") then
                local data = j.getJSONArray("data")
                groqModels = {} 
                for i = 0, data.length() - 1 do
                    local item = data.getJSONObject(i)
                    local id = item.getString("id")
                    if not id:match("whisper") then
                        table.insert(groqModels, {name = id, id = id})
                    end
                end
                service.asyncSpeak("تم تحديث القائمة: " .. #groqModels .. " موديل.")
                if callback then callback() end
            else
                service.asyncSpeak("فشل تحليل بيانات Groq.")
            end
        else
            service.asyncSpeak("فشل الاتصال بـ Groq. كود: " .. code)
        end
    end)
end

-- ### UI Window Functions ###

function showImageDescriptionWindow(initialDescription, initialOcrText, base64Image)
    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
    if imageQueryRecognizer then pcall(function() imageQueryRecognizer.destroy() end); imageQueryRecognizer = nil end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)

    local accumulatedQnAForImage = "الوصف الأولي للصورة: " .. initialDescription .. "\nالنص المستخرج مبدئيًا من الصورة: " .. initialOcrText .. "\n\n"
    
    resultWindow = LinearLayout(service); resultWindow.setOrientation(LinearLayout.VERTICAL); resultWindow.setBackgroundColor(0xFF121212); resultWindow.setPadding(30,30,30,30)
    
    local titleV = TextView(service); titleV.setText("تحليل الصورة والاستعلام عنها"); titleV.setTextSize(22); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0,0,0,20); resultWindow.addView(titleV)
    local scrollV = ScrollView(service); local contentL = LinearLayout(service); contentL.setOrientation(LinearLayout.VERTICAL); contentL.setPadding(10,10,10,10)
    
    local descLbl = TextView(service); descLbl.setText("وصف الصورة:"); descLbl.setTextSize(18); descLbl.setTypeface(nil, Typeface.BOLD); descLbl.setTextColor(0xFF64B5F6); contentL.addView(descLbl)
    local descTxtV = TextView(service); descTxtV.setText(initialDescription); descTxtV.setTextIsSelectable(true); descTxtV.setTextSize(16); descTxtV.setTextColor(0xFFE0E0E0); descTxtV.setPadding(0,10,0,20); contentL.addView(descTxtV)
    
    local copyDescBtn = Button(service); copyDescBtn.setText("📋 نسخ الوصف"); styleButton(copyDescBtn, "secondary"); 
    copyDescBtn.setOnClickListener(function() local cb=service.getSystemService(Context.CLIPBOARD_SERVICE); local cl=ClipData.newPlainText("Image Description",descTxtV.getText().toString());cb.setPrimaryClip(cl);service.asyncSpeak(getFeedbackString("copy_desc", currentDictLangDetails.code)) end); 
    contentL.addView(copyDescBtn)
    
    local ocrLbl = TextView(service); ocrLbl.setText("النص المستخرج:"); ocrLbl.setTextSize(18); ocrLbl.setTypeface(nil, Typeface.BOLD); ocrLbl.setTextColor(0xFF64B5F6); ocrLbl.setPadding(0,20,0,0); contentL.addView(ocrLbl)
    local ocrTxtV = TextView(service); ocrTxtV.setText(initialOcrText); ocrTxtV.setTextIsSelectable(true); ocrTxtV.setTextSize(16); ocrTxtV.setTextColor(0xFFE0E0E0); ocrTxtV.setPadding(0,10,0,20); contentL.addView(ocrTxtV)
    
    local copyOcrBtn = Button(service); copyOcrBtn.setText("📋 نسخ النص المستخرج"); styleButton(copyOcrBtn, "secondary");
    copyOcrBtn.setOnClickListener(function() local cb=service.getSystemService(Context.CLIPBOARD_SERVICE); local cl=ClipData.newPlainText("Extracted Text",ocrTxtV.getText().toString());cb.setPrimaryClip(cl);service.asyncSpeak(getFeedbackString("copy_ocr", currentDictLangDetails.code)) end); 
    contentL.addView(copyOcrBtn)
    
    local qnaLbl = TextView(service); qnaLbl.setText("المحادثة حول الصورة:"); qnaLbl.setTextSize(18); qnaLbl.setTypeface(nil, Typeface.BOLD); qnaLbl.setTextColor(0xFF64B5F6); qnaLbl.setPadding(0,30,0,10); contentL.addView(qnaLbl)
    
    local qnaHistoryLayout = LinearLayout(service)
    qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL)
    contentL.addView(qnaHistoryLayout)
    
    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 التحدث للسؤال عن الصورة"); styleButton(voiceQBtn, "primary")
    voiceQBtn.setOnClickListener(function()
        if not base64Image then service.asyncSpeak(getFeedbackString("image_query_no_data", currentDictLangDetails.code)); return end
        if imageQueryRecognizer then service.asyncSpeak(getFeedbackString("image_query_pending", currentDictLangDetails.code)); return end
        if not SpeechRecognizer.isRecognitionAvailable(service) then service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return end

        voiceQBtn.setText("⏳ جارٍ الاستماع..."); voiceQBtn.setEnabled(false);
        
        imageQueryRecognizer = SpeechRecognizer.createSpeechRecognizer(service)
        local qIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, selectedLanguage or "ar"); qIntent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); qIntent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)
        imageQueryRecognizer.setRecognitionListener(RecognitionListener{
            onReadyForSpeech=function() voiceQBtn.setText("...تحدث الآن") end, onBeginningOfSpeech=function()end, onRmsChanged=function()end, onBufferReceived=function()end, onEndOfSpeech=function() voiceQBtn.setText("🤔 جاري المعالجة...") end,
            onError=function(e) service.asyncSpeak(getFeedbackString("image_query_error_listening", currentDictLangDetails.code, e)); pcall(function()imageQueryRecognizer.destroy()end); imageQueryRecognizer=nil; voiceQBtn.setText("🎤 التحدث للسؤال عن الصورة"); voiceQBtn.setEnabled(true); end,
            onResults=function(r)
                local m=r.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                if m and m.size()>0 then
                    local uQ=m.get(0)
                    if uQ and uQ~="" then
                        local userBubble = createChatBubble(uQ, true)
                        qnaHistoryLayout.addView(userBubble)
                        
                        local aiBubble = createChatBubble("جاري البحث...", false)
                        qnaHistoryLayout.addView(aiBubble)
                        
                        pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)

                        queryImageWithGemini(base64Image, uQ, accumulatedQnAForImage, function(aiR)
                            aiBubble.getChildAt(0).setText(aiR)
                            speakAIResponseViaCustomTTS(aiR, "ar")
                            accumulatedQnAForImage=accumulatedQnAForImage.."سؤالي: "..uQ.."\nإجابتك: "..aiR.."\n\n"
                            pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)
                        end)
                    else
                        service.asyncSpeak(getFeedbackString("image_query_no_query_recognized", currentDictLangDetails.code))
                    end
                else
                    service.asyncSpeak(getFeedbackString("image_query_no_query_heard", currentDictLangDetails.code))
                end
                pcall(function()imageQueryRecognizer.destroy()end); imageQueryRecognizer=nil
                voiceQBtn.setText("🎤 التحدث للسؤال عن الصورة"); voiceQBtn.setEnabled(true)
            end,
            onPartialResults=function()end, onEvent=function()end
        }); pcall(function() imageQueryRecognizer.startListening(qIntent) end)
    end)
    
    local btnParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParams.setMargins(0,30,0,10)
    voiceQBtn.setLayoutParams(btnParams)
    if base64Image then contentL.addView(voiceQBtn) end
    
    scrollV.addView(contentL); local scrP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,0,1.0); resultWindow.addView(scrollV,scrP)
    
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function() if resultWindow then pcall(function()wm.removeView(resultWindow)end); resultWindow=nil end; if imageQueryRecognizer then pcall(function()imageQueryRecognizer.destroy()end); imageQueryRecognizer=nil end end)
    local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); btnP.topMargin=20; resultWindow.addView(closeBtn,btnP)
    
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
    pcall(function() wm.addView(resultWindow, winP) end)

    if initialDescription and initialDescription ~= "لم يتم العثور على وصف." and initialDescription ~= "" then
        local combinedInitialInfo = "الوصف: " .. initialDescription
        if initialOcrText and initialOcrText ~= "لم يتم العثور على نص." and initialOcrText ~= "" and #initialOcrText > 15 then
            combinedInitialInfo = combinedInitialInfo .. ". تم استخراج النص التالي: " .. initialOcrText
        elseif initialOcrText and initialOcrText ~= "لم يتم العثور على نص." and initialOcrText ~= "" then
             combinedInitialInfo = combinedInitialInfo .. ". النص المستخرج: " .. initialOcrText
        end
        speakAIResponseViaCustomTTS(combinedInitialInfo, "ar")
    end
end

function showSummaryWindow(summary)
    if summaryWindow then pcall(function() wm.removeView(summaryWindow) end); summaryWindow = nil end
    if summaryQueryRecognizer then pcall(function() summaryQueryRecognizer.destroy() end); summaryQueryRecognizer = nil end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    
    local summaryAccumulatedHistory = ""
    
    summaryWindow = LinearLayout(service); summaryWindow.setOrientation(LinearLayout.VERTICAL); summaryWindow.setBackgroundColor(0xFF121212); summaryWindow.setPadding(30,30,30,30)
    local titleV = TextView(service); titleV.setText("ملخص النص والمحادثة"); titleV.setTextSize(22); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0,0,0,20); summaryWindow.addView(titleV)
    
    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service); contentL.setOrientation(LinearLayout.VERTICAL); contentL.setPadding(10,10,10,10)
    
    local sumLbl = TextView(service); sumLbl.setText("الملخص:"); sumLbl.setTextSize(18); sumLbl.setTypeface(nil, Typeface.BOLD); sumLbl.setTextColor(0xFF64B5F6); contentL.addView(sumLbl)
    local sumTxtV = TextView(service); sumTxtV.setText(summary); sumTxtV.setTextIsSelectable(true); sumTxtV.setTextSize(16); sumTxtV.setTextColor(0xFFE0E0E0); sumTxtV.setPadding(0,10,0,20); contentL.addView(sumTxtV)
    
    local copySumBtn = Button(service); copySumBtn.setText("📋 نسخ الملخص"); styleButton(copySumBtn, "secondary");
    copySumBtn.setOnClickListener(function() local cb=service.getSystemService(Context.CLIPBOARD_SERVICE); local cl=ClipData.newPlainText("Summary",sumTxtV.getText().toString());cb.setPrimaryClip(cl);service.asyncSpeak(getFeedbackString("copy_general_text", currentDictLangDetails.code)) end); 
    contentL.addView(copySumBtn)
    
    local qnaLbl = TextView(service); qnaLbl.setText("المحادثة والأسئلة:"); qnaLbl.setTextSize(18); qnaLbl.setTypeface(nil, Typeface.BOLD); qnaLbl.setTextColor(0xFF64B5F6); qnaLbl.setPadding(0,30,0,10); contentL.addView(qnaLbl)
    
    local qnaHistoryLayout = LinearLayout(service)
    qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL)
    contentL.addView(qnaHistoryLayout)
    
    local askQBtn = Button(service); askQBtn.setText("🎤 التحدث للسؤال عن الملخص"); styleButton(askQBtn, "primary")
    askQBtn.setOnClickListener(function()
        if summaryQueryRecognizer then service.asyncSpeak(getFeedbackString("image_query_pending", currentDictLangDetails.code)); return end
        if groqApiKey=="" then service.asyncSpeak(getFeedbackString("api_key_missing_for_feature", currentDictLangDetails.code, "Summary Query")); return end
        if not SpeechRecognizer.isRecognitionAvailable(service) then service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return end
        askQBtn.setText("⏳ جارٍ الاستماع..."); askQBtn.setEnabled(false)
        service.asyncSpeak("ما هو سؤالك عن الملخص؟") 
        summaryQueryRecognizer = SpeechRecognizer.createSpeechRecognizer(service)
        local qIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, selectedLanguage or "ar"); qIntent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); qIntent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)
        summaryQueryRecognizer.setRecognitionListener(RecognitionListener{
            onReadyForSpeech=function() askQBtn.setText("...تحدث الآن") end,
            onBeginningOfSpeech=function()end, onRmsChanged=function()end, onBufferReceived=function()end,
            onEndOfSpeech=function() askQBtn.setText("🤔 جاري المعالجة...") end,
            onError=function(e) service.asyncSpeak("خطأ في الاستماع: " .. tostring(e)); pcall(function()summaryQueryRecognizer.destroy()end); summaryQueryRecognizer=nil; askQBtn.setText("🎤 التحدث للسؤال عن الملخص"); askQBtn.setEnabled(true) end,
            onResults=function(r)
                local m=r.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                if m and m.size()>0 then
                    local uQ=m.get(0)
                    if uQ and uQ~="" then
                        local newHistory = summaryAccumulatedHistory .. (summaryAccumulatedHistory == "" and "" or "\n") .. "المستخدم: " .. uQ 
                        
                        local userBubble = createChatBubble(uQ, true)
                        qnaHistoryLayout.addView(userBubble)
                        
                        local aiBubble = createChatBubble("جاري البحث...", false)
                        qnaHistoryLayout.addView(aiBubble)
                        
                        pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)

                        querySummaryWithGemini(summary, summaryAccumulatedHistory, uQ, function(aiR)
                            if aiR and not aiR:match("^Error:") and not aiR:match("^خطأ:") then
                                summaryAccumulatedHistory = newHistory .. "\nالمساعد: " .. aiR 
                                aiBubble.getChildAt(0).setText(aiR)
                                speakAIResponseViaCustomTTS(aiR, "ar") 
                                pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)
                            else
                                local errorMsg = aiR or "خطأ في المعالجة."
                                aiBubble.getChildAt(0).setText(errorMsg)
                                service.asyncSpeak(errorMsg)
                            end
                        end)
                    else
                        service.asyncSpeak(getFeedbackString("image_query_no_query_recognized", currentDictLangDetails.code))
                    end
                else
                    service.asyncSpeak(getFeedbackString("image_query_no_query_heard", currentDictLangDetails.code))
                end
                pcall(function()summaryQueryRecognizer.destroy()end); summaryQueryRecognizer=nil
                askQBtn.setText("🎤 التحدث للسؤال عن الملخص"); askQBtn.setEnabled(true)
            end,
            onPartialResults=function()end, onEvent=function()end
        })
        pcall(function() summaryQueryRecognizer.startListening(qIntent) end)
    end)
    
    local btnParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParams.setMargins(0,30,0,10)
    askQBtn.setLayoutParams(btnParams)
    contentL.addView(askQBtn)
    
    scrollV.addView(contentL)
    local scrP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,0,1.0)
    summaryWindow.addView(scrollV,scrP)
    
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function() if summaryWindow then pcall(function()wm.removeView(summaryWindow)end); summaryWindow=nil end; if summaryQueryRecognizer then pcall(function()summaryQueryRecognizer.destroy()end); summaryQueryRecognizer=nil end end)
    local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); btnP.topMargin=20; summaryWindow.addView(closeBtn,btnP)
    
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
    pcall(function() wm.addView(summaryWindow, winP) end)

    if summary and not summary:match("^Error:") and not summary:match("^خطأ:") and summary ~= "" then
        speakAIResponseViaCustomTTS(summary, "ar") 
    end
end

function showVideoAnalysisWindow(initialSummary, fileUri, filePath)
    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    local accumulatedQnA = "ملخص الفيديو: " .. (initialSummary or "") .. "\n\n"

    resultWindow = LinearLayout(service); resultWindow.setOrientation(LinearLayout.VERTICAL); resultWindow.setBackgroundColor(0xFF121212); resultWindow.setPadding(30,30,30,30)

    local titleV = TextView(service); titleV.setText("تحليل الفيديو والدردشة"); titleV.setTextSize(22); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0,0,0,20); resultWindow.addView(titleV)

    local scrollV = ScrollView(service); local contentL = LinearLayout(service); contentL.setOrientation(LinearLayout.VERTICAL); contentL.setPadding(10,10,10,10)

    local sumLbl = TextView(service); sumLbl.setText("ملخص الفيديو:"); sumLbl.setTextSize(18); sumLbl.setTypeface(nil, Typeface.BOLD); sumLbl.setTextColor(0xFF64B5F6); contentL.addView(sumLbl)
    local sumTxtV = TextView(service); sumTxtV.setText(initialSummary); sumTxtV.setTextIsSelectable(true); sumTxtV.setTextSize(16); sumTxtV.setTextColor(0xFFE0E0E0); sumTxtV.setPadding(0,10,0,20); contentL.addView(sumTxtV)

    local copySumBtn = Button(service); copySumBtn.setText("📋 نسخ الملخص"); styleButton(copySumBtn, "secondary");
    copySumBtn.setOnClickListener(function() local cb=service.getSystemService(Context.CLIPBOARD_SERVICE); local cl=ClipData.newPlainText("Video Summary",sumTxtV.getText().toString());cb.setPrimaryClip(cl);service.asyncSpeak(getFeedbackString("copy_general_text", currentDictLangDetails.code)) end);
    contentL.addView(copySumBtn)

    local qnaLbl = TextView(service); qnaLbl.setText("المحادثة والأسئلة:"); qnaLbl.setTextSize(18); qnaLbl.setTypeface(nil, Typeface.BOLD); qnaLbl.setTextColor(0xFF64B5F6); qnaLbl.setPadding(0,30,0,10); contentL.addView(qnaLbl)

    local qnaHistoryLayout = LinearLayout(service)
    qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL)
    contentL.addView(qnaHistoryLayout)

    local askQBtn = Button(service); askQBtn.setText("🎤 سؤال صوتي حول الفيديو"); styleButton(askQBtn, "primary")
    askQBtn.setOnClickListener(function()
        if not SpeechRecognizer.isRecognitionAvailable(service) then service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return end
        askQBtn.setText("⏳ جارٍ الاستماع..."); askQBtn.setEnabled(false)
        local localRec = SpeechRecognizer.createSpeechRecognizer(service)
        local qIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, selectedLanguage or "ar"); qIntent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); qIntent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)
        localRec.setRecognitionListener(RecognitionListener{
            onReadyForSpeech=function() askQBtn.setText("...تحدث الآن") end, onEndOfSpeech=function() askQBtn.setText("🤔 جاري المعالجة...") end,
            onError=function(e) service.asyncSpeak("خطأ في الاستماع"); pcall(function()localRec.destroy()end); askQBtn.setText("🎤 سؤال صوتي حول الفيديو"); askQBtn.setEnabled(true); end,
            onResults=function(r)
                local m=r.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                if m and m.size()>0 then
                    local uQ=m.get(0)
                    if uQ and uQ~="" then
                        local userBubble = createChatBubble(uQ, true); qnaHistoryLayout.addView(userBubble)
                        local aiBubble = createChatBubble("جاري البحث...", false); qnaHistoryLayout.addView(aiBubble)
                        pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)

                        local promptText = accumulatedQnA .. "سؤال المستخدم: " .. uQ
                        local ext = filePath:match("%.([^%.]+)$") or "mp4"
                        ext = ext:lower()
                        local mime = "video/" .. ext
                        if ext == "mov" then mime = "video/quicktime"
                        elseif ext == "avi" then mime = "video/x-msvideo"
                        elseif ext == "webm" then mime = "video/webm"
                        elseif ext == "3gp" then mime = "video/3gpp"
                        elseif ext == "mkv" then mime = "video/x-matroska"
                        elseif ext == "mpeg" or ext == "mpg" then mime = "video/mpeg"
                        elseif ext == "flv" then mime = "video/x-flv"
                        elseif ext == "wmv" then mime = "video/x-ms-wmv"
                        end

                        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
                        local headers = {["Content-Type"] = "application/json"}
                        local root = JSONObject(); local contentObj = JSONObject(); local partsArray = JSONArray()
                        local filePart = JSONObject(); local fileData = JSONObject()
                        fileData.put("mime_type", mime); fileData.put("file_uri", fileUri)
                        filePart.put("file_data", fileData); partsArray.put(filePart)
                        local textPart = JSONObject(); textPart.put("text", promptText); partsArray.put(textPart)
                        contentObj.put("parts", partsArray); local contentsArray = JSONArray(); contentsArray.put(contentObj); root.put("contents", contentsArray)

                        Http.post(url, root.toString(), headers, function(status, response)
                            local resultTxt = "Error: " .. status
                            if status == 200 then
                                local s, j = pcall(function() return JSONObject(response) end)
                                if s and j.has("candidates") then
                                    local cands = j.getJSONArray("candidates")
                                    if cands.length() > 0 then
                                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then resultTxt = parts.getJSONObject(0).getString("text") end
                                    end
                                end
                            end
                            mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                                run = function()
                                    aiBubble.getChildAt(0).setText(resultTxt)
                                    speakAIResponseViaCustomTTS(resultTxt, "ar")
                                    accumulatedQnA = accumulatedQnA .. "سؤالي: " .. uQ .. "\nإجابتك: " .. resultTxt .. "\n\n"
                                    pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)
                                end
                            }))
                        end)
                    end
                end
                pcall(function()localRec.destroy()end); askQBtn.setText("🎤 سؤال صوتي حول الفيديو"); askQBtn.setEnabled(true)
            end
        }); pcall(function() localRec.startListening(qIntent) end)
    end)

    local btnParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParams.setMargins(0,30,0,10); askQBtn.setLayoutParams(btnParams); contentL.addView(askQBtn)

    scrollV.addView(contentL); local scrP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,0,1.0); resultWindow.addView(scrollV,scrP)

    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function() if resultWindow then pcall(function()wm.removeView(resultWindow)end); resultWindow=nil end end)
    local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); btnP.topMargin=20; resultWindow.addView(closeBtn,btnP)

    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
    pcall(function() wm.addView(resultWindow, winP) end)

    if initialSummary and initialSummary ~= "" then speakAIResponseViaCustomTTS(initialSummary, "ar") end
end

function showResultWindow(titleTextStr, contentTextStr)
    if resultWindow and globalResultContentTextView then 
        globalResultContentTextView.setText(contentTextStr)
        return 
    end
    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil; globalResultContentTextView = nil end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    resultWindow = LinearLayout(service); resultWindow.setOrientation(LinearLayout.VERTICAL); resultWindow.setBackgroundColor(0xFF1E1E1E); resultWindow.setPadding(35,35,35,35)
    local titleV = TextView(service); titleV.setText(titleTextStr); titleV.setTextSize(20); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); resultWindow.addView(titleV)
    local scrollV = ScrollView(service); 
    globalResultContentTextView = TextView(service); 
    globalResultContentTextView.setText(contentTextStr); globalResultContentTextView.setTextIsSelectable(true); globalResultContentTextView.setTextSize(18); globalResultContentTextView.setTextColor(0xFFE0E0E0); globalResultContentTextView.setPadding(10,20,10,20); scrollV.addView(globalResultContentTextView); resultWindow.addView(scrollV, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,0,1.0))
    local copyBtn = Button(service); copyBtn.setText("📋 نسخ النص"); styleButton(copyBtn, "secondary"); copyBtn.setOnClickListener(function() local cb=service.getSystemService(Context.CLIPBOARD_SERVICE); local cl=ClipData.newPlainText(titleTextStr,globalResultContentTextView.getText().toString()); cb.setPrimaryClip(cl); service.asyncSpeak(getFeedbackString("copy_general_text", currentDictLangDetails.code)) end); resultWindow.addView(copyBtn)
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setOnClickListener(function() if resultWindow then pcall(function()wm.removeView(resultWindow)end); resultWindow=nil; globalResultContentTextView=nil end end); local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); resultWindow.addView(closeBtn,btnP)
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=WindowManager.LayoutParams.WRAP_CONTENT; winP.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.1; winP.verticalMargin=0.1
    pcall(function() wm.addView(resultWindow, winP) end)
end

function showUniversalFilePicker(title, startPath, filterFunc, onFileSelected)
    local fpWindow, searchEt, statusV, listL, backBtn
    local allItems = {}
    local filteredItems = {}
    local currentPath = startPath
    local shownCount = 0
    local BATCH_SIZE = 150

    local function addMoreItems()
        local start = shownCount + 1
        local finish = math.min(shownCount + BATCH_SIZE, #filteredItems)
        local oldMore = listL.findViewWithTag("show_more_btn")
        if oldMore then listL.removeView(oldMore) end
        for i = start, finish do
            local item = filteredItems[i]
            local btn = Button(service)
            local icon = "📄 "
            if item.isDir then icon = "📁 "
            elseif item.lowName:match("%.mp3$") or item.lowName:match("%.wav$") or item.lowName:match("%.m4a$") or item.lowName:match("%.ogg$") or item.lowName:match("%.aac$") then icon = "🎵 " end
            btn.setText(icon .. item.name)
            btn.setTextColor(0xFFE0E0E0); btn.setBackgroundColor(0); btn.setGravity(Gravity.START | Gravity.CENTER_VERTICAL)
            btn.setPadding(20, 30, 20, 30); btn.setTransformationMethod(nil)
            btn.setOnClickListener(function()
                if item.isDir then _G.currentUniversalLoadDir(item.path)
                else pcall(function() wm.removeView(fpWindow) end); onFileSelected(item.path) end
            end)
            listL.addView(btn)
        end
        shownCount = finish
        if shownCount < #filteredItems then
            local moreBtn = Button(service); moreBtn.setTag("show_more_btn"); moreBtn.setText("➕ عرض المزيد (" .. (#filteredItems - shownCount) .. " ملف متبقي)")
            styleButton(moreBtn, "secondary"); moreBtn.setOnClickListener(function() addMoreItems() end)
            local lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
            lp.setMargins(20, 20, 20, 40); listL.addView(moreBtn, lp)
        end
    end

    local function updateDisplay(filter)
        listL.removeAllViews(); filteredItems = {}; shownCount = 0
        if not filter or filter == "" then filteredItems = allItems
        else
            filter = filter:lower()
            for _, item in ipairs(allItems) do if item.lowName:find(filter, 1, true) then table.insert(filteredItems, item) end end
        end
        if #filteredItems == 0 then statusV.setVisibility(View.VISIBLE); statusV.setText(filter and filter ~= "" and "⚠️ لم يتم العثور على نتائج." or "⚠️ مجلد فارغ.")
        else statusV.setVisibility(View.GONE); addMoreItems() end
    end

    local function loadDir(path)
        if not path then return end
        currentPath = path; searchEt.setText(""); listL.removeAllViews()
        statusV.setVisibility(View.VISIBLE); statusV.setText("⏳ جاري التحميل...")
        local f = File(path); local isAtStorageRoot = false; local storages = getStoragePaths()
        for _, s in ipairs(storages) do if path == s.path or path == s.path:sub(1, -2) then isAtStorageRoot = true; break end end
        backBtn.setEnabled(not isAtStorageRoot and f.getParent() ~= nil)
        import "java.lang.Thread"; import "java.lang.Runnable"
        Thread(Runnable{
            run = function()
                local files = nil; pcall(function() files = f.listFiles() end); local results = {}
                if files then
                    for i = 0, #files - 1 do
                        local file = files[i]
                        if not file.isHidden() then
                            local fname = file.getName():lower()
                            if file.isDirectory() or filterFunc(fname) then
                                table.insert(results, { name = file.getName(), lowName = fname, path = file.getAbsolutePath(), isDir = file.isDirectory() })
                            end
                        end
                    end
                end
                table.sort(results, function(a, b)
                    if a.isDir and not b.isDir then return true end
                    if not a.isDir and b.isDir then return false end
                    return a.lowName < b.lowName
                end)
                allItems = results
                mainHandler.post(luajava.createProxy("java.lang.Runnable", { run = function() updateDisplay() end }))
            end
        }).start()
    end
    _G.currentUniversalLoadDir = loadDir

    fpWindow = LinearLayout(service); fpWindow.setOrientation(LinearLayout.VERTICAL); fpWindow.setBackgroundColor(0xFF121212); fpWindow.setPadding(30, 30, 30, 30)
    local titleV = TextView(service); titleV.setText(title); titleV.setTextSize(20); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0, 0, 0, 15); fpWindow.addView(titleV)

    searchEt = EditText(service); searchEt.setHint("🔍 ابحث هنا عن ملف..."); styleEditText(searchEt)
    searchEt.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    fpWindow.addView(searchEt)

    statusV = TextView(service); statusV.setTextColor(0xFF64B5F6); statusV.setGravity(Gravity.CENTER); statusV.setPadding(0, 10, 0, 10); statusV.setVisibility(View.GONE); fpWindow.addView(statusV)

    local topBtnsL = LinearLayout(service); topBtnsL.setOrientation(LinearLayout.HORIZONTAL); topBtnsL.setPadding(0, 15, 0, 15); fpWindow.addView(topBtnsL)
    local storageBtn = Button(service); storageBtn.setText("🔀 تخزين"); styleButton(storageBtn, "secondary"); local lp1 = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); lp1.rightMargin = 10; topBtnsL.addView(storageBtn, lp1)
    backBtn = Button(service); backBtn.setText("📁 .. رجوع"); styleButton(backBtn, "secondary"); topBtnsL.addView(backBtn, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0))

    local scrollV = ScrollView(service); listL = LinearLayout(service); listL.setOrientation(LinearLayout.VERTICAL); scrollV.addView(listL)
    fpWindow.addView(scrollV, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1.0))

    searchEt.addTextChangedListener{
        onTextChanged = function(s) updateDisplay(tostring(s)) end
    }

    storageBtn.setOnClickListener(function()
        local paths = getStoragePaths()
        local builder = AlertDialog.Builder(service)
        builder.setTitle("اختر وحدة التخزين")
        local names = {}
        for i, p in ipairs(paths) do names[i] = p.name end
        builder.setItems(names, function(_, which) _G.currentUniversalLoadDir(paths[which + 1].path) end)
        local dialog = builder.create()
        dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY)
        dialog.show()
    end)

    backBtn.setOnClickListener(function()
        local f = File(currentPath)
        if f.getParent() then _G.currentUniversalLoadDir(f.getParent()) end
    end)

    local closeBtn = Button(service)
    closeBtn.setText("❌ إغلاق")
    styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function() pcall(function() wm.removeView(fpWindow) end) end)
    local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnP.topMargin = 20
    fpWindow.addView(closeBtn, btnP)

    local winP = WindowManager.LayoutParams()
    winP.width = WindowManager.LayoutParams.MATCH_PARENT
    winP.height = math.floor(service.getResources().getDisplayMetrics().heightPixels * 0.8)
    winP.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY
    winP.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
    winP.format = PixelFormat.TRANSLUCENT
    winP.gravity = Gravity.CENTER
    pcall(function() wm.addView(fpWindow, winP) end)

    mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {
        run = function() _G.currentUniversalLoadDir(startPath) end
    }), 200)
end

function openFilePickerWindow(startPath, onFileSelected)
    local function audioFilter(fname)
        return fname:match("%.mp3$") or fname:match("%.wav$") or fname:match("%.m4a$") or fname:match("%.ogg$") or fname:match("%.aac$")
    end
    showUniversalFilePicker("اختر ملف صوتي 🎵", startPath, audioFilter, onFileSelected)
end

function openDocumentPickerWindow(startPath, onFileSelected)
    local function docFilter(fname)
        return fname:match("%.pdf$") or fname:match("%.docx$") or fname:match("%.txt$") or fname:match("%.epub$") or
               fname:match("%.mp4$") or fname:match("%.mov$") or fname:match("%.avi$") or fname:match("%.webm$") or
               fname:match("%.3gp$") or fname:match("%.mkv$") or fname:match("%.mpeg$") or fname:match("%.mpg$") or
               fname:match("%.flv$") or fname:match("%.wmv$")
    end
    showUniversalFilePicker("اختر مستند أو فيديو (PDF/Video/...) 📄", startPath, docFilter, onFileSelected)
end

function showDocumentViewerWindow(filePath, fileUri, isWordLocal, initialText, epubSpine)
    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    local isTxt = filePath:lower():match("%.txt$") ~= nil
    local isEpub = filePath:lower():match("%.epub$") ~= nil
    local accumulatedQnA = (isTxt and "ملف نصي محمل محلياً.\n\n") or (isWordLocal and "ملف Word محمل محلياً.\n\n") or (isEpub and "ملف EPUB محمل محلياً.\n\n") or "ملف PDF محمل.\n\n"
    
    resultWindow = LinearLayout(service); resultWindow.setOrientation(LinearLayout.VERTICAL); resultWindow.setBackgroundColor(0xFF121212); resultWindow.setPadding(20,20,20,20)
    
    local headerL = LinearLayout(service); headerL.setOrientation(LinearLayout.HORIZONTAL); headerL.setGravity(Gravity.CENTER_VERTICAL); headerL.setPadding(0,0,0,10)
    local titleV = TextView(service);
    local titleText = "عارض المستند"
    if isTxt then titleText = "النص (txt)"
    elseif isWordLocal then titleText = "Word"
    elseif isEpub then titleText = "EPUB"
    else titleText = "PDF" end
    titleV.setText("📄 " .. titleText); titleV.setTextSize(18); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD)
    headerL.addView(titleV, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0))

    local fastCloseBtn = Button(service); fastCloseBtn.setText("❌"); styleButton(fastCloseBtn, "danger")
    fastCloseBtn.setPadding(10,10,10,10)
    headerL.addView(fastCloseBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))
    resultWindow.addView(headerL)
    
    local pagesCache = {}
    local currentCacheIdx = 1
    local sentencesList = {}
    local currentSentenceIdx = 1
    local isPlaying = false
    local docTts = nil
    local isDocTtsInit = false

    local stopReading, initDocTts, readCurrentSentence, rebuildSentencesList, updateDisplayPage, fetchRangeContentRemote, updateProgress

    local controlsL = LinearLayout(service); controlsL.setOrientation(LinearLayout.VERTICAL); resultWindow.addView(controlsL)

    if not isWordLocal and not isTxt and not isEpub then
        local pageCtrlL = LinearLayout(service); pageCtrlL.setOrientation(LinearLayout.HORIZONTAL); pageCtrlL.setGravity(Gravity.CENTER_VERTICAL); pageCtrlL.setPadding(0,0,0,10)
        local l1 = TextView(service); l1.setText("من:"); l1.setTextColor(0xFFB0B0B0); l1.setPadding(0,0,10,0); pageCtrlL.addView(l1)
        local e1 = EditText(service); e1.setInputType(2); e1.setText("1"); e1.setHint("1"); styleEditText(e1); local lp1 = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); lp1.rightMargin=10; pageCtrlL.addView(e1, lp1)
        local l2 = TextView(service); l2.setText("إلى:"); l2.setTextColor(0xFFB0B0B0); l2.setPadding(0,0,10,0); pageCtrlL.addView(l2)
        local e2 = EditText(service); e2.setInputType(2); e2.setText("5"); e2.setHint("5"); styleEditText(e2); local lp2 = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); pageCtrlL.addView(e2, lp2)
        controlsL.addView(pageCtrlL)

        local loadBtn = Button(service); loadBtn.setText("📂 تحميل الصفحات"); styleButton(loadBtn, "primary")
        loadBtn.setOnClickListener(function()
            local sP, eP = e1.getText().toString(), e2.getText().toString()
            local nS, nE = tonumber(sP), tonumber(eP)
            if not nS or not nE or nS > nE then service.asyncSpeak("أدخل نطاق صفحات صحيح.") return end
            fetchRangeContentRemote(sP, eP)
        end)
        controlsL.addView(loadBtn)
    end

    local playbackL = LinearLayout(service); playbackL.setOrientation(LinearLayout.HORIZONTAL); playbackL.setGravity(Gravity.CENTER); playbackL.setPadding(0,10,0,10)
    local prevSkipBtn = Button(service); prevSkipBtn.setText("⏪"); styleButton(prevSkipBtn, "secondary")
    local playBtn = Button(service); playBtn.setText("▶️"); styleButton(playBtn, "primary")
    local nextSkipBtn = Button(service); nextSkipBtn.setText("⏩"); styleButton(nextSkipBtn, "secondary")
    local ttsSetBtn = Button(service); ttsSetBtn.setText("⚙️"); styleButton(ttsSetBtn, "secondary")

    local btnParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); btnParams.setMargins(5,0,5,0)
    playbackL.addView(prevSkipBtn, btnParams); playbackL.addView(playBtn, btnParams); playbackL.addView(nextSkipBtn, btnParams); playbackL.addView(ttsSetBtn, LinearLayout.LayoutParams(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT))
    controlsL.addView(playbackL)

    local progressL = LinearLayout(service); progressL.setOrientation(LinearLayout.HORIZONTAL); progressL.setGravity(Gravity.CENTER_VERTICAL); progressL.setPadding(10,0,10,10)
    local seekBar = SeekBar(service); seekBar.setMax(100); local lpS = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); progressL.addView(seekBar, lpS)
    local progressTv = TextView(service); progressTv.setText("0%"); progressTv.setTextColor(0xFF64B5F6); progressTv.setPadding(10,0,0,0); progressL.addView(progressTv)
    controlsL.addView(progressL)

    local listView = ListView(service); listView.setDividerHeight(0)
    listView.setChoiceMode(ListView.CHOICE_MODE_SINGLE)

    local adapter = ArrayAdapter(service, android.R.layout.simple_list_item_activated_1, ArrayList())
    listView.setAdapter(adapter)
    resultWindow.addView(listView, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1.0))

    listView.setOnItemClickListener(AdapterView.OnItemClickListener{
        onItemClick = function(parent, view, position, id)
            local wasPlaying = isPlaying
            stopReading()
            currentSentenceIdx = position + 1
            updateProgress()
            if wasPlaying then readCurrentSentence() end
        end
    })

    local footerL = LinearLayout(service); footerL.setOrientation(LinearLayout.VERTICAL)
    local footerParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    footerParams.topMargin = 10
    resultWindow.addView(footerL, footerParams)

    local qnaScroll = ScrollView(service)
    qnaScroll.setLayoutParams(LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 150))
    local qnaHistoryLayout = LinearLayout(service); qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL); qnaScroll.addView(qnaHistoryLayout); footerL.addView(qnaScroll)

    local footerBtnsL = LinearLayout(service); footerBtnsL.setOrientation(LinearLayout.HORIZONTAL)
    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 سؤال"); styleButton(voiceQBtn, "primary")
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger")

    local lpBtn = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0)
    lpBtn.setMargins(10, 5, 10, 5)
    footerBtnsL.addView(voiceQBtn, lpBtn)
    footerBtnsL.addView(closeBtn, lpBtn)
    footerL.addView(footerBtnsL)

    local currentChapterIdx = 1
    if isEpub and epubSpine then
        local chapL = LinearLayout(service); chapL.setOrientation(LinearLayout.HORIZONTAL); chapL.setGravity(Gravity.CENTER_VERTICAL); chapL.setPadding(0,0,0,20)
        local chapLbl = TextView(service); chapLbl.setText("الفصل:"); chapLbl.setTextColor(0xFFB0B0B0); chapLbl.setPadding(0,0,20,0); chapL.addView(chapLbl)

        local chapNames = ArrayList()
        for _, item in ipairs(epubSpine) do chapNames.add(item.title) end
        local chapSpinner = Spinner(service)
        local chapAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, chapNames)
        chapAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        chapSpinner.setAdapter(chapAdapter)
        chapL.addView(chapSpinner, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0))
        controlsL.addView(chapL)

        chapSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
            onItemSelected = function(parent, view, position, id)
                local newIdx = position + 1
                if currentChapterIdx == newIdx and pagesCache and #pagesCache > 0 then return end
                currentChapterIdx = newIdx
                local chapPath = epubSpine[currentChapterIdx].path
                service.asyncSpeak("جاري تحميل الفصل...")
                local wasPlaying = isPlaying
                stopReading()

                local chapText, err = extractEpubChapterText(filePath, chapPath)
                if chapText then
                    initialText = chapText
                    pagesCache = {initialText}
                    currentCacheIdx = 1
                    updateDisplayPage()
                    if wasPlaying then readCurrentSentence() end
                else
                    service.asyncSpeak("فشل تحميل الفصل.")
                    service.asyncSpeak("خطأ: " .. tostring(err))
                end
            end
        })
        _G.updateEpubChapterSelection = function(idx)
            mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                run = function() chapSpinner.setSelection(idx - 1) end
            }))
        end
    end

    if isTxt then
        local encL = LinearLayout(service); encL.setOrientation(LinearLayout.HORIZONTAL); encL.setGravity(Gravity.CENTER_VERTICAL); encL.setPadding(0,20,0,20)
        local encLbl = TextView(service); encLbl.setText("ترميز الملف:"); encLbl.setTextColor(0xFFB0B0B0); encLbl.setPadding(0,0,20,0); encL.addView(encLbl)

        local encNames = ArrayList(); encNames.add("UTF-8"); encNames.add("Windows-1256 (Arabic)"); encNames.add("ISO-8859-6 (Arabic)"); encNames.add("UTF-16")
        local encCodes = {"UTF-8", "Windows-1256", "ISO-8859-6", "UTF-16"}
        local encSpinner = Spinner(service)
        local encAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, encNames)
        encAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        encSpinner.setAdapter(encAdapter)
        encL.addView(encSpinner, LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0))

        local reloadBtn = Button(service); reloadBtn.setText("🔄 إعادة تحميل"); styleButton(reloadBtn, "secondary")
        encL.addView(reloadBtn)
        controlsL.addView(encL)

        reloadBtn.setOnClickListener(function()
            local selectedEnc = encCodes[encSpinner.getSelectedItemPosition() + 1]
            service.asyncSpeak("إعادة تحميل الملف بترميز " .. selectedEnc)
            local text, err = extractTxtTextLocal(filePath, selectedEnc)
            if text then
                initialText = text
                pagesCache = {initialText}
                currentCacheIdx = 1
                updateDisplayPage()
            else
                service.asyncSpeak("فشل إعادة التحميل.")
            end
        end)
    end

    stopReading = function()
        isPlaying = false
        if docTts then pcall(function() docTts.stop() end) end
        playBtn.setText("▶️")
    end

    updateProgress = function()
        if #sentencesList > 0 then
            local percent = math.floor((currentSentenceIdx / #sentencesList) * 100)
            seekBar.setProgress(percent)
            progressTv.setText(percent .. "%")
        end
    end

    rebuildSentencesList = function()
        sentencesList = {}
        adapter.clear()
        for i, pageText in ipairs(pagesCache) do
            local pageSentences = splitIntoSentences(pageText)
            for _, s in ipairs(pageSentences) do
                table.insert(sentencesList, s)
                adapter.add(s)
            end
        end
        currentSentenceIdx = 1
        listView.setItemChecked(0, true)
        updateProgress()
    end

    initDocTts = function(callback)
        mainHandler.post(luajava.createProxy("java.lang.Runnable", {
            run = function()
                if docTts then pcall(function() docTts.stop(); docTts.shutdown() end) end
                isDocTtsInit = false
                local listener = TextToSpeech.OnInitListener{
                    onInit = function(status)
                        if status == TextToSpeech.SUCCESS then
                            isDocTtsInit = true
                            if pdfTtsVoiceName and pdfTtsVoiceName ~= "" then
                                local voices = nil
                                pcall(function() voices = docTts.getVoices() end)
                                if voices then
                                    local it = voices.iterator()
                                    while it.hasNext() do
                                        local v = it.next()
                                        if v and v.getName() == pdfTtsVoiceName then pcall(function() docTts.setVoice(v) end) break end
                                    end
                                end
                            end
                            pcall(function() docTts.setSpeechRate(pdfTtsSpeed or 1.0) end)
                            import "android.speech.tts.UtteranceProgressListener"
                            local progressListener = UtteranceProgressListener{
                                onStart = function(id) end,
                                onDone = function(id)
                                    if id == "doc_seg" and isPlaying then
                                        mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                                            run = function()
                                                if currentSentenceIdx < #sentencesList then
                                                    currentSentenceIdx = currentSentenceIdx + 1
                                                    updateProgress()
                                                    listView.setItemChecked(currentSentenceIdx - 1, true)
                                                    listView.smoothScrollToPosition(currentSentenceIdx - 1)
                                                    readCurrentSentence()
                                                elseif isEpub and epubSpine and currentChapterIdx < #epubSpine then
                                                    if _G.updateEpubChapterSelection then _G.updateEpubChapterSelection(currentChapterIdx + 1) end
                                                else stopReading() end
                                            end
                                        }))
                                    end
                                end,
                                onError = function(id) end
                            }
                            docTts.setOnUtteranceProgressListener(progressListener)
                        end
                        if callback then callback(isDocTtsInit) end
                    end
                }
                if pdfTtsEngine and pdfTtsEngine ~= "" then docTts = TextToSpeech(service, listener, tostring(pdfTtsEngine))
                else docTts = TextToSpeech(service, listener) end
            end
        }))
    end

    readCurrentSentence = function()
        if not sentencesList or #sentencesList == 0 then return end
        local text = sentencesList[currentSentenceIdx]
        if not text or text == "" then
            if currentSentenceIdx < #sentencesList then
                currentSentenceIdx = currentSentenceIdx + 1
                return readCurrentSentence()
            else return stopReading() end
        end
        isPlaying = true
        playBtn.setText("⏸️")
        local function startSpeak()
            if docTts and isDocTtsInit then
                local s_s, err = pcall(function() docTts.speak(tostring(text), TextToSpeech.QUEUE_FLUSH, nil, "doc_seg") end)
                if not s_s then
                    local params = HashMap(); params.put("utteranceId", "doc_seg")
                    pcall(function() docTts.speak(tostring(text), TextToSpeech.QUEUE_FLUSH, params) end)
                end
            else service.asyncSpeak(tostring(text)) end
        end
        if not isDocTtsInit or not docTts then initDocTts(function(success) if success then startSpeak() else stopReading() end end)
        else startSpeak() end
    end

    updateDisplayPage = function()
        if pagesCache and #pagesCache > 0 then
            rebuildSentencesList()
        end
    end

    fetchRangeContentRemote = function(startP, endP)
        service.asyncSpeak("جاري استخراج النصوص من الصفحة " .. startP .. " إلى " .. endP .. "...")
        local q = "استخرج النص الموجود في هذا الملف من الصفحة " .. startP .. " إلى الصفحة " .. endP .. ". افصل بين كل صفحة وأخرى بوضع العلامة التالية فقط: ===PAGE_BREAK==="
        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
        local headers = {["Content-Type"] = "application/json"}
        local root = JSONObject(); local contentObj = JSONObject(); local partsArray = JSONArray()
        local filePart = JSONObject(); local fileData = JSONObject()
        fileData.put("mime_type", "application/pdf"); fileData.put("file_uri", fileUri)
        filePart.put("file_data", fileData); partsArray.put(filePart)
        local textPart = JSONObject(); textPart.put("text", q); partsArray.put(textPart)
        contentObj.put("parts", partsArray); local contentsArray = JSONArray(); contentsArray.put(contentObj); root.put("contents", contentsArray)

        Http.post(url, root.toString(), headers, function(status, response)
            local resultTxt = ""
            if status == 200 then
                local s, j = pcall(function() return JSONObject(response) end)
                if s and j.has("candidates") then
                    local cands = j.getJSONArray("candidates")
                    if cands.length() > 0 then
                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then resultTxt = parts.getJSONObject(0).getString("text") end
                    end
                end
            else resultTxt = "Error: " .. status .. " - " .. tostring(response) end
            mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                run = function()
                    if resultTxt:match("^Error:") then service.asyncSpeak(resultTxt)
                    else
                        pagesCache = {}
                        local delimiter = "===PAGE_BREAK==="
                        local s = 1
                        while true do
                            local e = string.find(resultTxt, delimiter, s, true)
                            if not e then
                                local last = string.sub(resultTxt, s)
                                if last and last ~= "" and not last:match("^%s*$") then table.insert(pagesCache, (last:gsub("^%s*", ""):gsub("%s*$", ""))) end
                                break
                            end
                            local part = string.sub(resultTxt, s, e - 1)
                            if part and part ~= "" and not part:match("^%s*$") then table.insert(pagesCache, (part:gsub("^%s*", ""):gsub("%s*$", ""))) end
                            s = e + #delimiter
                        end
                        if #pagesCache > 0 then currentCacheIdx = 1; updateDisplayPage()
                        else service.asyncSpeak("تعذر تقسيم النص.") end
                    end
                end
            }))
        end)
    end

    local function askAiAboutDoc(promptText, aiBubble)
        if geminiApiKey == "" then service.asyncSpeak("مفتاح Gemini مفقود.") return end
        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
        local headers = {["Content-Type"] = "application/json"}
        local root = JSONObject(); local contentObj = JSONObject(); local partsArray = JSONArray()
        
        if isWordLocal or isTxt or isEpub then
            local sysPart = JSONObject(); sysPart.put("text", "System: You are an assistant answering questions about the following document content.\n\nContent:\n" .. (initialText or ""))
            partsArray.put(sysPart)
        else
            local filePart = JSONObject(); local fileData = JSONObject()
            fileData.put("mime_type", "application/pdf"); fileData.put("file_uri", fileUri)
            filePart.put("file_data", fileData); partsArray.put(filePart)
        end
        
        local textPart = JSONObject(); textPart.put("text", promptText); partsArray.put(textPart)
        contentObj.put("parts", partsArray); local contentsArray = JSONArray(); contentsArray.put(contentObj); root.put("contents", contentsArray)
        
        Http.post(url, root.toString(), headers, function(status, response)
            local resultTxt = "Error: " .. status
            if status == 200 then
                local s, j = pcall(function() return JSONObject(response) end)
                if s and j.has("candidates") then
                    local cands = j.getJSONArray("candidates")
                    if cands.length() > 0 then
                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then resultTxt = parts.getJSONObject(0).getString("text") end
                    end
                end
            else resultTxt = resultTxt .. " - " .. tostring(response) end
            mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                run = function()
                    if aiBubble then 
                        aiBubble.getChildAt(0).setText(resultTxt) 
                        speakAIResponseViaCustomTTS(resultTxt, "ar")
                        accumulatedQnA = accumulatedQnA .. "AI: " .. resultTxt .. "\n\n"
                        pcall(function() qnaScroll.fullScroll(ScrollView.FOCUS_DOWN) end)
                    end
                end
            }))
        end)
    end
    
    playBtn.setOnClickListener(function() if isPlaying then stopReading() else readCurrentSentence() end end)

    prevSkipBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        currentSentenceIdx = math.max(1, currentSentenceIdx - 4)
        updateProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)

    nextSkipBtn.setOnClickListener(function()
        local wasPlaying = isPlaying; stopReading()
        currentSentenceIdx = math.min(#sentencesList, currentSentenceIdx + 4)
        updateProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
        if wasPlaying then readCurrentSentence() end
    end)

    seekBar.setOnSeekBarChangeListener(luajava.createProxy("android.widget.SeekBar$OnSeekBarChangeListener", {
        onProgressChanged = function(s, p, fromUser)
            if fromUser and #sentencesList > 0 then
                progressTv.setText(p .. "%")
            end
        end,
        onStartTrackingTouch = function() end,
        onStopTrackingTouch = function(s)
            if #sentencesList > 0 then
                local p = s.getProgress()
                local wasPlaying = isPlaying; stopReading()
                currentSentenceIdx = math.max(1, math.floor((p / 100) * #sentencesList))
                updateProgress(); listView.setItemChecked(currentSentenceIdx - 1, true); listView.setSelection(currentSentenceIdx - 1)
                if wasPlaying then readCurrentSentence() end
            end
        end
    }))
    ttsSetBtn.setOnClickListener(function() stopReading(); openPdfTtsSettings(function() isDocTtsInit = false end) end)

    voiceQBtn.setOnClickListener(function()
        if not SpeechRecognizer.isRecognitionAvailable(service) then service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return end
        voiceQBtn.setText("⏳ جارٍ الاستماع..."); voiceQBtn.setEnabled(false);
        local localRec = SpeechRecognizer.createSpeechRecognizer(service)
        local qIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, selectedLanguage or "ar"); qIntent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); qIntent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)
        localRec.setRecognitionListener(RecognitionListener{
            onReadyForSpeech=function() voiceQBtn.setText("...تحدث الآن") end, onEndOfSpeech=function() voiceQBtn.setText("🤔 جاري المعالجة...") end,
            onError=function(e) service.asyncSpeak("خطأ استماع"); pcall(function()localRec.destroy()end); voiceQBtn.setText("🎤 سؤال حول الملف"); voiceQBtn.setEnabled(true); end,
            onResults=function(r)
                local m=r.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                if m and m.size()>0 then
                    local uQ=m.get(0)
                    if uQ and uQ~="" then
                        local userBubble = createChatBubble(uQ, true); qnaHistoryLayout.addView(userBubble)
                        local aiBubble = createChatBubble("جاري البحث...", false); qnaHistoryLayout.addView(aiBubble)
                        pcall(function() qnaScroll.fullScroll(ScrollView.FOCUS_DOWN) end)
                        local q = accumulatedQnA .. "Question: " .. uQ
                        askAiAboutDoc(q, aiBubble)
                        accumulatedQnA = accumulatedQnA .. "User: " .. uQ .. "\n"
                    end
                end
                pcall(function()localRec.destroy()end); voiceQBtn.setText("🎤 سؤال حول الملف"); voiceQBtn.setEnabled(true)
            end
        }); pcall(function() localRec.startListening(qIntent) end)
    end)
    
    local closeAction = function()
        stopReading()
        if docTts then pcall(function() docTts.shutdown() end) end
        if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
        service.asyncSpeak("تم إغلاق المستند.")
    end

    fastCloseBtn.setOnClickListener(function() closeAction() end)
    closeBtn.setOnClickListener(function() closeAction() end)

    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
    pcall(function() wm.addView(resultWindow, winP) end)
    
    if (isWordLocal or isTxt or isEpub) and initialText then
        pagesCache = {initialText}
        currentCacheIdx = 1
        updateDisplayPage()
    elseif not isWordLocal and not isEpub then
        local function detectPageCount()
            local q = "كم عدد الصفحات في هذا الملف؟ أجب بالرقم فقط."
            local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
            local headers = {["Content-Type"] = "application/json"}
            local root = JSONObject(); local contentObj = JSONObject(); local partsArray = JSONArray()
            local filePart = JSONObject(); local fileData = JSONObject()
            fileData.put("mime_type", "application/pdf"); fileData.put("file_uri", fileUri)
            filePart.put("file_data", fileData); partsArray.put(filePart)
            local textPart = JSONObject(); textPart.put("text", q); partsArray.put(textPart)
            contentObj.put("parts", partsArray); local contentsArray = JSONArray(); contentsArray.put(contentObj); root.put("contents", contentsArray)

            Http.post(url, root.toString(), headers, function(status, response)
                if status == 200 then
                    local s, j = pcall(function() return JSONObject(response) end)
                    if s and j.has("candidates") then
                        local cands = j.getJSONArray("candidates")
                        if cands.length() > 0 then
                            local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                            if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                                local countText = parts.getJSONObject(0).getString("text"):match("%d+")
                                if countText then
                                    local msg = "هذا الملف يحتوي على " .. countText .. " صفحة. يمكنك الآن تحديد النطاق والتحميل."
                                    mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                                        run = function() service.asyncSpeak(msg) end
                                    }))
                                    return
                                end
                            end
                        end
                    end
                end
                service.asyncSpeak("تم تحميل الملف. يرجى إدخال نطاق الصفحات للبدء.")
            end)
        end
        detectPageCount()
    else
        service.asyncSpeak("يرجى الضغط على زر تحميل الصفحات للبدء.")
    end
end


function extractTxtTextLocal(filePath, encoding)
    import "java.io.File"
    import "java.io.FileInputStream"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.StringBuilder"

    encoding = encoding or "UTF-8"
    local success, result = pcall(function()
        local file = File(filePath)
        local is = FileInputStream(file)
        local reader = BufferedReader(InputStreamReader(is, encoding))
        local sb = StringBuilder()
        local line = reader.readLine()
        while line ~= nil do
            sb.append(line)
            sb.append("\n")
            line = reader.readLine()
        end
        reader.close()
        return sb.toString()
    end)

    if success then return result else return nil, tostring(result) end
end

function extractEpubMetadata(filePath)
    import "java.util.zip.ZipFile"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.StringBuilder"

    local success, result = pcall(function()
        local zipFile = ZipFile(filePath)
        local function cleanup() pcall(function() zipFile.close() end) end

        local containerEntry = zipFile.getEntry("META-INF/container.xml")
        if not containerEntry then
            cleanup()
            return nil, "ملف EPUB غير صالح (container.xml مفقود)"
        end

        local is = zipFile.getInputStream(containerEntry)
        local reader = BufferedReader(InputStreamReader(is, "UTF-8"))
        local containerXml = ""
        local line = reader.readLine()
        while line ~= nil do containerXml = containerXml .. line; line = reader.readLine() end
        reader.close()

        local opfPath = containerXml:match("full%-path=\"([^\"]+)\"")
        if not opfPath then
            cleanup()
            return nil, "تعذر العثور على مسار ملف الفهرس (OPF)"
        end

        local baseDir = ""
        if opfPath:find("/") then
            baseDir = opfPath:match("(.+)/[^/]+$") .. "/"
        end

        local opfEntry = zipFile.getEntry(opfPath)
        is = zipFile.getInputStream(opfEntry)
        reader = BufferedReader(InputStreamReader(is, "UTF-8"))
        local opfXml = ""
        line = reader.readLine()
        while line ~= nil do opfXml = opfXml .. line; line = reader.readLine() end
        reader.close()

        local manifest = {}
        for item in opfXml:gmatch("<item%s+([^>]+)>") do
            local id = item:match("id=\"([^\"]+)\"")
            local href = item:match("href=\"([^\"]+)\"")
            if id and href then
                manifest[id] = baseDir .. href
            end
        end

        local spine = {}
        for itemref in opfXml:gmatch("<itemref%s+([^>]+)>") do
            local idref = itemref:match("idref=\"([^\"]+)\"")
            if idref and manifest[idref] then
                table.insert(spine, { id = idref, path = manifest[idref] })
            end
        end

        for i, item in ipairs(spine) do
            local filename = item.path:match("([^/]+)$") or item.path
            item.title = "الفصل " .. i .. " (" .. filename .. ")"
        end

        cleanup()
        return spine
    end)

    if success then return result else return nil, tostring(result) end
end

function extractEpubChapterText(filePath, chapterInternalPath)
    import "java.util.zip.ZipFile"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.StringBuilder"

    local success, result = pcall(function()
        local zipFile = ZipFile(filePath)
        local function cleanup() pcall(function() zipFile.close() end) end
        local entry = zipFile.getEntry(chapterInternalPath)
        if not entry then
            cleanup()
            return nil, "الفصل غير موجود: " .. chapterInternalPath
        end

        local is = zipFile.getInputStream(entry)
        local reader = BufferedReader(InputStreamReader(is, "UTF-8"))
        local sb = StringBuilder()
        local line = reader.readLine()
        while line ~= nil do
            sb.append(line)
            line = reader.readLine()
        end
        reader.close()
        cleanup()

        local htmlContent = sb.toString()
        local text = htmlContent:gsub("<style.-</style>", ""):gsub("<script.-</script>", "")
        text = text:gsub("<[^>]+>", " ")
        text = text:gsub("&lt;", "<"):gsub("&gt;", ">"):gsub("&amp;", "&"):gsub("&quot;", "\""):gsub("&apos;", "'")
        text = text:gsub("&nbsp;", " "):gsub("&rlm;", ""):gsub("&lrm;", "")
        text = text:gsub("%s+", " "):gsub("^%s*", ""):gsub("%s*$", "")

        return text
    end)

    if success then return result else return nil, tostring(result) end
end

function extractDocxTextLocal(filePath)
    import "java.util.zip.ZipFile"
    import "java.io.InputStreamReader"
    import "java.io.BufferedReader"
    import "java.lang.StringBuilder"

    local success, result = pcall(function()
        local zipFile = ZipFile(filePath)
        local entry = zipFile.getEntry("word/document.xml")
        if not entry then
            zipFile.close()
            return nil, "ملف Word غير صالح (document.xml مفقود)"
        end

        local is = zipFile.getInputStream(entry)
        local reader = BufferedReader(InputStreamReader(is, "UTF-8"))
        local sb = StringBuilder()
        local line = reader.readLine()
        while line ~= nil do
            sb.append(line)
            line = reader.readLine()
        end
        reader.close()
        zipFile.close()

        local xmlContent = sb.toString()
        local textParts = {}

        -- Iterate through all tags and text
        for part in xmlContent:gmatch("<[^>]+>[^<]*") do
            local tag = part:match("<([^>]+)>")
            local content = part:match(">([^<]*)")
            if tag and tag:match("^w:t") then
                if content then table.insert(textParts, content) end
            elseif tag == "/w:p" or tag == "w:br/" or tag == "w:cr/" then
                table.insert(textParts, "\n")
            elseif tag == "w:tab/" then
                table.insert(textParts, "\t")
            end
        end

        -- Handle some common entities
        local finalResult = table.concat(textParts, "")
        finalResult = finalResult:gsub("&lt;", "<"):gsub("&gt;", ">"):gsub("&amp;", "&"):gsub("&quot;", "\""):gsub("&apos;", "'")

        return finalResult
    end)

    if success then return result else return nil, tostring(result) end
end

function splitIntoSentences(text)
    if not text then return {} end
    local sentences = {}

    -- We use a marker to split without breaking UTF-8 Arabic characters
    -- Negated character sets like [^...] are byte-based in Lua and break Arabic
    local s = text
    s = s:gsub("([%.!%?\n\r]+)", "%1\0")
    s = s:gsub("(؟+)", "%1\0")
    s = s:gsub("(؛+)", "%1\0")

    for part in s:gmatch("([^%z]+)") do
        local cleaned = part:gsub("^%s+", ""):gsub("%s+$", "")
        if #cleaned > 0 then
            table.insert(sentences, cleaned)
        end
    end

    if #sentences == 0 and #text > 0 then
        table.insert(sentences, text)
    end
    return sentences
end
function smartSplitText(text, limit)
    limit = limit or 2000
    local pages = {}
    local startPos = 1
    local textLen = #text

    while startPos <= textLen do
        local endPos = startPos + limit
        if endPos >= textLen then
            table.insert(pages, text:sub(startPos))
            break
        end

        -- Look for the next space or newline to avoid cutting words
        local nextSpace = text:find("[ \n\r\t]", endPos)
        if nextSpace then
            table.insert(pages, text:sub(startPos, nextSpace))
            startPos = nextSpace + 1
        else
            -- If no space found till the end, just take the rest
            table.insert(pages, text:sub(startPos))
            break
        end
    end
    return pages
end

function loadVideoAndShowViewer(filePath)
    if geminiApiKey == "" then
        service.asyncSpeak("مفتاح Gemini مفقود.")
        return
    end
    service.asyncSpeak("جاري رفع الفيديو للتحليل...")
    showResultWindow("تحليل الفيديو", "⏳ جاري رفع ملف الفيديو...")

    local ext = filePath:match("%.([^%.]+)$") or "mp4"
    ext = ext:lower()
    local mime = "video/" .. ext
    if ext == "mov" then mime = "video/quicktime"
    elseif ext == "avi" then mime = "video/x-msvideo"
    elseif ext == "webm" then mime = "video/webm"
    elseif ext == "3gp" then mime = "video/3gpp"
    elseif ext == "mkv" then mime = "video/x-matroska"
    elseif ext == "mpeg" or ext == "mpg" then mime = "video/mpeg"
    elseif ext == "flv" then mime = "video/x-flv"
    elseif ext == "wmv" then mime = "video/x-ms-wmv"
    end

    uploadFileToGemini(filePath, mime, geminiApiKey, function(fileUriOrError)
        if fileUriOrError:match("^Error:") then
            service.asyncSpeak("خطأ في رفع الفيديو.")
            showResultWindow("خطأ", fileUriOrError)
            return
        end

        service.asyncSpeak("تم الرفع بنجاح. بانتظار معالجة الفيديو من جوجل...")
        showResultWindow("تحليل الفيديو", "⏳ جاري المعالجة على سيرفرات جوجل (قد يستغرق دقائق حسب حجم الملف)...")

        -- Videos usually need some time before the first poll is even useful
        mainHandler.postDelayed(luajava.createProxy("java.lang.Runnable", {
            run = function()
                waitForGeminiFileActive(fileUriOrError, geminiApiKey, function(success, err)
                    if success then
                        service.asyncSpeak("اكتملت المعالجة. جاري استخراج ملخص الفيديو...")
                        showResultWindow("تحليل الفيديو", "⏳ جاري التحليل المبدئي...")

                        local prompt = "قدم ملخصاً شاملاً لما يحدث في هذا الفيديو باللغة العربية. اذكر أهم الأحداث أو المعلومات المذكورة بوضوح."
                        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
                        local headers = {["Content-Type"] = "application/json"}
                        local root = JSONObject(); local contentObj = JSONObject(); local partsArray = JSONArray()
                        local filePart = JSONObject(); local fileData = JSONObject()
                        fileData.put("mime_type", mime); fileData.put("file_uri", fileUriOrError)
                        filePart.put("file_data", fileData); partsArray.put(filePart)
                        local textPart = JSONObject(); textPart.put("text", prompt); partsArray.put(textPart)
                        contentObj.put("parts", partsArray); local contentsArray = JSONArray(); contentsArray.put(contentObj); root.put("contents", contentsArray)

                        Http.post(url, root.toString(), headers, function(status, response)
                            local resultTxt = ""
                            if status == 200 then
                                local s, j = pcall(function() return JSONObject(response) end)
                                if s and j.has("candidates") then
                                    local cands = j.getJSONArray("candidates")
                                    if cands.length() > 0 then
                                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then resultTxt = parts.getJSONObject(0).getString("text") end
                                    end
                                end
                            else resultTxt = "Error: " .. status .. " - " .. tostring(response) end

                            mainHandler.post(luajava.createProxy("java.lang.Runnable", {
                                run = function()
                                    if resultTxt:match("^Error:") then
                                        service.asyncSpeak("فشل التحليل المبدئي.")
                                        showResultWindow("خطأ", resultTxt)
                                    else
                                        showVideoAnalysisWindow(resultTxt, fileUriOrError, filePath)
                                    end
                                end
                            }))
                        end)
                    else
                        service.asyncSpeak("فشلت معالجة الفيديو.")
                        showResultWindow("خطأ", err or "فشلت المعالجة.")
                    end
                end)
            end
        }), 15000)
    end)
end

function loadPdfAndShowViewer(filePath)
    if geminiApiKey == "" then
        service.asyncSpeak("مفتاح Gemini مفقود.")
        return
    end
    service.asyncSpeak("جاري تحميل وقراءة الملف...")
    showResultWindow("تحميل PDF", "⏳ جاري قراءة الملف وتجهيزه...")
    
    uploadFileToGemini(filePath, "application/pdf", geminiApiKey, function(fileUriOrError)
        if fileUriOrError:match("^Error:") then
            service.asyncSpeak("خطأ في تحميل الملف.")
            showResultWindow("خطأ", fileUriOrError)
            return
        end
        showDocumentViewerWindow(filePath, fileUriOrError, false)
    end)
end

function loadDocumentAndShowViewer(filePath)
    local ext = filePath:match("%.([^%.]+)$")
    if ext then ext = ext:lower() end

    if ext == "pdf" then
        loadPdfAndShowViewer(filePath)
    elseif ext == "mp4" or ext == "mov" or ext == "avi" or ext == "webm" or ext == "3gp" or ext == "mkv" or ext == "mpeg" or ext == "mpg" or ext == "flv" or ext == "wmv" then
        loadVideoAndShowViewer(filePath)
    elseif ext == "docx" then
        service.asyncSpeak("جاري قراءة ملف الوورد محلياً...")
        local text, err = extractDocxTextLocal(filePath)
        if text then
            showDocumentViewerWindow(filePath, nil, true, text)
        else
            service.asyncSpeak("فشل قراءة الملف: " .. (err or "خطأ غير معروف"))
            showResultWindow("خطأ", err or "فشل استخراج النص من ملف Word.")
        end
    elseif ext == "txt" then
        service.asyncSpeak("جاري قراءة الملف النصي...")
        -- Try UTF-8 first
        local text, err = extractTxtTextLocal(filePath, "UTF-8")
        if text then
            showDocumentViewerWindow(filePath, nil, true, text)
        else
            service.asyncSpeak("فشل قراءة الملف: " .. (err or "خطأ غير معروف"))
            showResultWindow("خطأ", err or "فشل استخراج النص من الملف النصي.")
        end
    elseif ext == "epub" then
        service.asyncSpeak("جاري تحليل الكتاب الإلكتروني...")
        local spine, err = extractEpubMetadata(filePath)
        if spine and #spine > 0 then
            service.asyncSpeak("جاري تحميل الفصل الأول...")
            local firstChapText, err2 = extractEpubChapterText(filePath, spine[1].path)
            if firstChapText then
                showDocumentViewerWindow(filePath, nil, false, firstChapText, spine)
            else
                service.asyncSpeak("فشل استخراج نص الفصل الأول.")
                showResultWindow("خطأ", err2 or "فشل استخراج نص من الكتاب.")
            end
        else
            service.asyncSpeak("فشل تحليل هيكل الكتاب.")
            showResultWindow("خطأ", err or "فشل قراءة بيانات الكتاب الإلكتروني.")
        end
    else
        service.asyncSpeak("عذراً، صيغة الملف غير مدعومة حالياً.")
    end
end

-- ### Screen Text and Screenshot Functions
function getTextFromScreen()
    local rootN = service.getRootInActiveWindow(); if rootN then local txtL={}; collectText(rootN,txtL); pcall(rootN.recycle,rootN); return table.concat(txtL," ") end; return ""
end
function collectText(node, textList)
    if not node then return end
    local nT; local s=pcall(function() nT=node.getText() end); if s and nT and #tostring(nT)>0 then table.insert(textList,tostring(nT)) end
    local cC=0; s=pcall(function() cC=node.getChildCount() end); if not s then return end
    for i=0,cC-1 do local ch; s=pcall(function() ch=node.getChild(i) end); if s and ch then collectText(ch,textList); pcall(ch.recycle,ch) end end
end

function runImageDescription()
    if isDescribingImage then
        service.asyncSpeak(getFeedbackString("image_desc_already_running", selectedLanguage))
        return
    end

    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    local visionProviderName = (imageDescriptionProvider == "groq") and "Groq" or "Gemini"
    local keyToUse = (imageDescriptionProvider == "groq") and groqApiKey or geminiApiKey

    if not keyToUse or keyToUse == "" then
        service.asyncSpeak(getFeedbackString("api_key_missing_for_feature", currentDictLangDetails.code, "Image Description (" .. visionProviderName .. ")"))
        return
    end

    isDescribingImage = true
    service.asyncSpeak(getFeedbackString("image_desc_start", currentDictLangDetails.code))
    takeScreenshotAndEncode(function(encImg)
        if encImg then
            describeImageWithGemini(encImg, function(descRes, rB64)
                local d, o = parseImageDescription(descRes)
                if descRes and (descRes:match("^Error:") or descRes:match("^خطأ:")) then
                    service.asyncSpeak(getFeedbackString("image_desc_fail_api", currentDictLangDetails.code, descRes))
                else
                    service.asyncSpeak(getFeedbackString("image_desc_success", currentDictLangDetails.code))
                end
                showImageDescriptionWindow(d, o, rB64)
                isDescribingImage = false
            end)
        else
            service.asyncSpeak(getFeedbackString("image_desc_fail_screenshot", currentDictLangDetails.code))
            showResultWindow("خطأ في وصف الصورة", getFeedbackString("image_desc_fail_screenshot", currentDictLangDetails.code))
            isDescribingImage = false
        end
    end)
end

function takeScreenshotAndEncode(callback)
    local function procBmp(bmp) if bmp then local s,r=pcall(function() local b=ByteArrayOutputStream(); bmp.compress(Bitmap.CompressFormat.PNG,90,b); local iB=b.toByteArray(); b.close(); pcall(bmp.recycle,bmp); return Base64.encodeToString(iB,Base64.NO_WRAP) end); if s then callback(r) else if bmp and not bmp.isRecycled() then pcall(bmp.recycle,bmp) end; callback(nil) end else callback(nil) end end
    if screenshotMode=="focus" then local n=service.getFocusView(); if n then pcall(function() service.getScreenShot(n,{onScreenCaptureDone=procBmp}) end); pcall(n.recycle,n) else pcall(function() service.getScreenShot({onScreenCaptureDone=procBmp}) end) end else pcall(function() service.getScreenShot({onScreenCaptureDone=procBmp}) end) end
end

-- ### Settings Management
function saveSettings()
    showFloatingSettingsButtonEnabled = showFloatingSettingsButtonEnabled or false
    continuousDictationEnabled = continuousDictationEnabled or false
    autoSpaceEnabled = autoSpaceEnabled or true
    geminiCorrectionEnabled = geminiCorrectionEnabled or false
    summarizeEnabled = summarizeEnabled or false
    imageDescriptionEnabled = imageDescriptionEnabled or false
    newTranslationFeatureEnabled = newTranslationFeatureEnabled or false

    local editor = prefs.edit()
    editor.putString("language", selectedLanguage or defaultSelectedLanguage)
    editor.putBoolean("continuousDictation", continuousDictationEnabled)
    editor.putBoolean("autoSpaceEnabled", autoSpaceEnabled)
    editor.putBoolean("geminiCorrectionEnabled", geminiCorrectionEnabled)
    
    editor.putString("geminiApiKey", geminiApiKey or "")
    editor.putString("groqApiKey", groqApiKey or "")
    editor.putString("witApiKey", witApiKey or "")
    editor.putString("geminiModelId", selectedGeminiModelId or defaultGeminiModelId)
    editor.putString("geminiLiveVoice", selectedGeminiLiveVoice or defaultGeminiLiveVoice)
    editor.putString("geminiLiveModelId", selectedGeminiLiveModelId or defaultGeminiLiveModelId)
    editor.putBoolean("geminiLiveEnabled", geminiLiveEnabled)
    editor.putString("groqModelId", selectedGroqModelId or defaultGroqModelId)
    editor.putString("audioModelId", selectedAudioModelId or defaultAudioModelId)

    editor.putBoolean("summarizeEnabled", summarizeEnabled)
    editor.putBoolean("imageDescriptionEnabled", imageDescriptionEnabled)
    editor.putString("screenshotMode", screenshotMode or "full")
    editor.putBoolean("showFloatingSettingsButton", showFloatingSettingsButtonEnabled)
    editor.putBoolean("newTranslationFeatureEnabled", newTranslationFeatureEnabled)
    editor.putString("translateToLanguage", translateToLanguage or defaultTranslateTo)
    editor.putBoolean("startWithDictation", startWithDictation)
    editor.apply()

    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    service.asyncSpeak(getFeedbackString("settings_saved", currentDictLangDetails.code))

    if showFloatingSettingsButtonEnabled and not floatingSettingsBtn then createAndShowFloatingButton()
    elseif not showFloatingSettingsButtonEnabled and floatingSettingsBtn then removeFloatingButton() end

    hideSettings()
end

function hideSettings()
    if settingsDialog then local r = pcall(function() wm.removeView(settingsDialog) end); if r then settingsDialog = nil end end
end

local mainWindowDialog = nil

function hideMainWindow()
    if mainWindowDialog then pcall(function() wm.removeView(mainWindowDialog) end); mainWindowDialog = nil end
end

function openMainWindow()
    if mainWindowDialog then return end
    hideSettings()

    mainWindowDialog = LinearLayout(service)
    mainWindowDialog.setOrientation(LinearLayout.VERTICAL)
    mainWindowDialog.setBackgroundColor(0xFF000000)
    mainWindowDialog.setPadding(30, 30, 30, 30)

    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)

    local titleTxt = TextView(service)
    titleTxt.setText("لوحة التحكم الذكية")
    titleTxt.setTextSize(26)
    titleTxt.setTypeface(nil, Typeface.BOLD)
    titleTxt.setTextColor(0xFFFFFFFF)
    titleTxt.setGravity(Gravity.CENTER)
    titleTxt.setPadding(0, 20, 0, 50)
    contentL.addView(titleTxt)

    local dictBtn = Button(service)
    dictBtn.setText("🎙️ الإملاء والترجمة")
    dictBtn.setContentDescription("فتح الإملاء الصوتي والترجمة")
    styleButton(dictBtn, "primary")
    dictBtn.setOnClickListener(function()
        hideMainWindow()
        startVoiceRecognition(true)
    end)
    contentL.addView(dictBtn)
    local liveBtn = Button(service)
    liveBtn.setText("🎙️ البث المباشر (Gemini Live)")
    liveBtn.setContentDescription("فتح جلسة محادثة صوتية مباشرة مع Gemini")
    styleButton(liveBtn, "primary")
    liveBtn.setOnClickListener(function()
        hideMainWindow()
        showGeminiLiveWindow()
    end)
    local btnParamsLive = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParamsLive.topMargin = 20
    contentL.addView(liveBtn, btnParamsLive)


    local readerBtn = Button(service)
    readerBtn.setText("📄 قارئ المستندات والفيديو")
    readerBtn.setContentDescription("فتح قارئ الملفات والمستندات والفيديو")
    styleButton(readerBtn, "secondary")
    readerBtn.setOnClickListener(function()
        hideMainWindow()
        local paths = getStoragePaths()
        local startPath = "/storage/emulated/0"
        if #paths > 0 then startPath = paths[1].path end
        openDocumentPickerWindow(startPath, function(selectedPath)
            loadDocumentAndShowViewer(selectedPath)
        end)
    end)
    local btnParamsReader = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParamsReader.topMargin = 20
    contentL.addView(readerBtn, btnParamsReader)

    local imageBtn = Button(service)
    imageBtn.setText("🖼️ وصف الصور")
    imageBtn.setContentDescription("التقاط الشاشة ووصف الصور")
    styleButton(imageBtn, "secondary")
    imageBtn.setOnClickListener(function()
        hideMainWindow()
        runImageDescription()
    end)
    local btnParamsImage = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParamsImage.topMargin = 20
    contentL.addView(imageBtn, btnParamsImage)

    local transcriptionBtn = Button(service)
    transcriptionBtn.setText("📁 تحويل الصوت إلى نص")
    transcriptionBtn.setContentDescription("اختيار ملف صوتي وتحويله إلى نص")
    styleButton(transcriptionBtn, "secondary")
    transcriptionBtn.setOnClickListener(function()
        hideMainWindow()
        local paths = getStoragePaths()
        local startPath = "/storage/emulated/0"
        if #paths > 0 then startPath = paths[1].path end
        openFilePickerWindow(startPath, function(selectedPath)
            service.asyncSpeak("جاري الرفع والمعالجة...")
            showResultWindow("نتيجة التحويل", "⏳ جاري الرفع والمعالجة...")
            transcribeAudio(selectedPath, function(result, isDone)
                showResultWindow("نتيجة التحويل", result)
                if isDone then
                    service.asyncSpeak("اكتمل التحويل.")
                end
            end)
        end)
    end)
    local btnParamsTrans = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParamsTrans.topMargin = 20
    contentL.addView(transcriptionBtn, btnParamsTrans)

    local settingsBtn = Button(service)
    settingsBtn.setText("⚙️ الإعدادات المتقدمة")
    settingsBtn.setContentDescription("تخصيص مفاتيح الربط واللغات والموديلات")
    styleButton(settingsBtn, "secondary")
    settingsBtn.setOnClickListener(function()
        hideMainWindow()
        openSettings()
    end)
    local btnParamsSet = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    btnParamsSet.topMargin = 40
    contentL.addView(settingsBtn, btnParamsSet)

    -- Placeholder for step-by-step button additions

    local closeBtn = Button(service)
    closeBtn.setText("❌ إغلاق")
    styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(hideMainWindow)
    local closeParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    closeParams.topMargin = 40
    contentL.addView(closeBtn, closeParams)

    scrollV.addView(contentL)
    mainWindowDialog.addView(scrollV)

    local p = WindowManager.LayoutParams()
    p.width = WindowManager.LayoutParams.MATCH_PARENT
    p.height = WindowManager.LayoutParams.WRAP_CONTENT
    p.type = WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY
    p.flags = WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
    p.format = PixelFormat.TRANSLUCENT
    p.gravity = Gravity.CENTER
    pcall(function() wm.addView(mainWindowDialog, p) end)
end

function openSettings()
    if settingsDialog then return end
    local currentDictLangDetails_settings = getLanguageDetails(selectedLanguage)

    settingsDialog = LinearLayout(service)
    settingsDialog.setOrientation(LinearLayout.VERTICAL)
    settingsDialog.setBackgroundColor(0xFF121212)
    settingsDialog.setPadding(35,35,35,35)

    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)
    contentL.setPadding(10,10,10,10)

    local titleTxt = TextView(service)
    titleTxt.setText("الإعدادات المتقدمة ⚙️")
    titleTxt.setTextSize(24)
    titleTxt.setTypeface(nil, Typeface.BOLD)
    titleTxt.setTextColor(0xFFFFFFFF)
    titleTxt.setGravity(Gravity.CENTER_HORIZONTAL)
    titleTxt.setPadding(0,0,0,40)
    contentL.addView(titleTxt)

    local function testModelConnection(modelIdToTest)
        local prompt = "Test connection. Say OK."
        service.asyncSpeak("جاري اختبار الموديل...")
        makeAiRequest(prompt, nil, nil, modelIdToTest, function(result)
            local msg = ""
            if result:match("AI Request Failed") then
                if result:match("404") then msg = "خطأ 404: الموديل غير موجود."
                elseif result:match("429") then msg = "خطأ 429: تجاوزت حد الاستخدام."
                elseif result:match("401") then msg = "خطأ 401: مفتاح غير صالح."
                else msg = "فشل الاتصال: " .. result end
            else msg = "✅ الموديل يعمل بنجاح!" end
            service.asyncSpeak(msg)
            showResultWindow("اختبار الموديل", msg .. "\n\n" .. result)
        end)
    end

    local function addSectionHeader(text, parent)
        local header = TextView(service)
        header.setText(text)
        header.setTextSize(18)
        header.setTypeface(nil, Typeface.BOLD)
        header.setTextColor(0xFF64B5F6)
        header.setPadding(0, 10, 0, 25)
        parent.addView(header)
    end

    local function createLabel(text)
        local lbl = TextView(service)
        lbl.setText(text)
        lbl.setTextSize(15)
        lbl.setTextColor(0xFFB0B0B0)
        lbl.setPadding(0, 15, 0, 10)
        return lbl
    end

    -- SECTION: API Keys
    local apiCard = createCard(contentL)
    addSectionHeader("مفاتيح الربط (API Keys)", apiCard)
    
    apiCard.addView(createLabel("مفتاح Groq API:"))
    local groqApiKeyIn = EditText(service)
    groqApiKeyIn.setText(groqApiKey or "")
    styleEditText(groqApiKeyIn)
    groqApiKeyIn.addTextChangedListener{onTextChanged=function(s) groqApiKey=s and s.toString() or "" end}
    groqApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    apiCard.addView(groqApiKeyIn)

    apiCard.addView(createLabel("مفتاح Gemini API:"))
    local gemApiKeyIn = EditText(service)
    gemApiKeyIn.setText(geminiApiKey or "")
    styleEditText(gemApiKeyIn)
    gemApiKeyIn.addTextChangedListener{onTextChanged=function(s) geminiApiKey=s and s.toString() or "" end}
    gemApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    apiCard.addView(gemApiKeyIn)

    apiCard.addView(createLabel("مفتاح Wit.ai (Facebook) API:"))
    local witApiKeyIn = EditText(service)
    witApiKeyIn.setText(witApiKey or "")
    styleEditText(witApiKeyIn)
    witApiKeyIn.addTextChangedListener{onTextChanged=function(s) witApiKey=s and s.toString() or "" end}
    witApiKeyIn.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then v.requestFocus(); local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE); if imm then imm.showSoftInput(v, 1) end end return false end })
    apiCard.addView(witApiKeyIn)

    -- SECTION: Model Selection
    local modelCard = createCard(contentL)
    addSectionHeader("اختيار النماذج (Models)", modelCard)

    modelCard.addView(createLabel("اختر موديل تفريغ الصوت (Transcription):"))
    local audNames = ArrayList(); local audIds = {}
    for _, m in ipairs(audioModels) do audNames.add(m.name); table.insert(audIds, m.id) end
    local audAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, audNames); audAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local audSpinner = Spinner(service); audSpinner.setAdapter(audAdapter)
    local currAudIdx = -1; for i, id in ipairs(audIds) do if id == selectedAudioModelId then currAudIdx = i-1 break end end
    if currAudIdx ~= -1 then audSpinner.setSelection(currAudIdx) end
    audSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedAudioModelId = audIds[position + 1] end })
    modelCard.addView(audSpinner)

    modelCard.addView(createLabel("اختر موديل Groq (Text AI):"))
    local grNames = ArrayList(); local grIds = {}
    local foundGr = false; for _, m in ipairs(groqModels) do if m.id == selectedGroqModelId then foundGr = true break end end
    if not foundGr and selectedGroqModelId ~= "" then grNames.add(selectedGroqModelId); table.insert(grIds, selectedGroqModelId) end
    for _, m in ipairs(groqModels) do grNames.add(m.name); table.insert(grIds, m.id) end
    local grAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, grNames); grAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local grSpinner = Spinner(service); grSpinner.setAdapter(grAdapter)
    local currGrIdx = -1; for i, id in ipairs(grIds) do if id == selectedGroqModelId then currGrIdx = i-1 break end end
    if currGrIdx ~= -1 then grSpinner.setSelection(currGrIdx) end
    grSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedGroqModelId = grIds[position + 1] end })
    modelCard.addView(grSpinner)

    local grFetchBtn = Button(service); grFetchBtn.setText("🔄 تحديث قائمة Groq"); styleButton(grFetchBtn, "secondary")
    grFetchBtn.setOnClickListener(function() fetchGroqModels(function() hideSettings(); openMainWindow() end) end)
    modelCard.addView(grFetchBtn)

    modelCard.addView(createLabel("اختر موديل Gemini (Vision/PDF):"))
    local gemNames = ArrayList(); local gemIds = {}
    for _, m in ipairs(geminiModels) do gemNames.add(m.name); table.insert(gemIds, m.id) end
    local gemAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, gemNames); gemAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local gemSpinner = Spinner(service); gemSpinner.setAdapter(gemAdapter)
    local currGemIdx = -1; for i, id in ipairs(gemIds) do if id == selectedGeminiModelId then currGemIdx = i-1 break end end
    if currGemIdx ~= -1 then gemSpinner.setSelection(currGemIdx) end
    gemSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedGeminiModelId = gemIds[position + 1] end })
    modelCard.addView(gemSpinner)

    -- SECTION: Voice & Language
    local voiceCard = createCard(contentL)
    addSectionHeader("إعدادات الصوت", voiceCard)
    
    local switchCont = Switch(service); switchCont.setChecked(continuousDictationEnabled); switchCont.setOnCheckedChangeListener(function(_, c) continuousDictationEnabled=c end)
    createSettingRow("الإملاء المستمر", switchCont, voiceCard)

    local switchSpace = Switch(service); switchSpace.setChecked(autoSpaceEnabled); switchSpace.setOnCheckedChangeListener(function(_, c) autoSpaceEnabled=c end)
    createSettingRow("مسافة تلقائية", switchSpace, voiceCard)

    -- SECTION: Smart Processing
    local aiCard = createCard(contentL)
    addSectionHeader("الذكاء الاصطناعي", aiCard)

    local switchTrans = Switch(service); switchTrans.setChecked(newTranslationFeatureEnabled); switchTrans.setOnCheckedChangeListener(function(_, c) newTranslationFeatureEnabled=c end)
    createSettingRow("الترجمة التلقائية", switchTrans, aiCard)

    local switchCorr = Switch(service); switchCorr.setChecked(geminiCorrectionEnabled); switchCorr.setOnCheckedChangeListener(function(_, c) geminiCorrectionEnabled=c end)
    createSettingRow("تصحيح + إيموجي", switchCorr, aiCard)

    -- SECTION: Tools
    local toolsCard = createCard(contentL)
    addSectionHeader("الأدوات", toolsCard)

    local switchSum = Switch(service); switchSum.setChecked(summarizeEnabled); switchSum.setOnCheckedChangeListener(function(_, c) summarizeEnabled=c end)
    createSettingRow("تلخيص النصوص", switchSum, toolsCard)

    local switchImg = Switch(service); switchImg.setChecked(imageDescriptionEnabled)
    createSettingRow("وصف الصور", switchImg, toolsCard)

    -- Screenshot Mode Spinner (dependent on Image Description)
    local screenModeContainer = LinearLayout(service)
    screenModeContainer.setOrientation(LinearLayout.VERTICAL)
    screenModeContainer.setPadding(60, 0, 40, 20)

    screenModeContainer.addView(createLabel("نطاق التقاط الوصف:"))
    local smNames = ArrayList(); local smIds = {"full", "focus"}
    smNames.add("كامل الشاشة"); smNames.add("العنصر المحدد")

    local smAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, smNames)
    smAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local smSpinner = Spinner(service)
    smSpinner.setAdapter(smAdapter)

    local currSmIdx = 0
    if screenshotMode == "focus" then currSmIdx = 1 end
    smSpinner.setSelection(currSmIdx)

    smSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(parent, view, position, id)
            screenshotMode = smIds[position + 1]
        end
    })
    screenModeContainer.addView(smSpinner)
    toolsCard.addView(screenModeContainer)
    local providerContainer = LinearLayout(service)
    providerContainer.setOrientation(LinearLayout.VERTICAL)
    providerContainer.setPadding(60, 0, 40, 10)
    providerContainer.addView(createLabel("مزود خدمة وصف الصور:"))
    local provNames = ArrayList(); local provIds = {"gemini", "groq"}
    provNames.add("Google Gemini"); provNames.add("Groq Cloud (مجاني)")
    local provAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, provNames); provAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local provSpinner = Spinner(service); provSpinner.setAdapter(provAdapter)
    local currProvIdx = 0; if imageDescriptionProvider == "groq" then currProvIdx = 1 end
    provSpinner.setSelection(currProvIdx)
    providerContainer.addView(provSpinner)
    toolsCard.addView(providerContainer)

    local groqVisionModelContainer = LinearLayout(service)
    groqVisionModelContainer.setOrientation(LinearLayout.VERTICAL)
    groqVisionModelContainer.setPadding(60, 0, 40, 10)
    groqVisionModelContainer.addView(createLabel("موديل Groq للصور:"))
    local grvNames = ArrayList(); local grvIds = {}
    for _, m in ipairs(groqVisionModels) do grvNames.add(m.name); table.insert(grvIds, m.id) end
    local grvAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, grvNames); grvAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local grvSpinner = Spinner(service); grvSpinner.setAdapter(grvAdapter)
    local currGrvIdx = 0; for i, id in ipairs(grvIds) do if id == selectedGroqVisionModelId then currGrvIdx = i-1 break end end
    grvSpinner.setSelection(currGrvIdx)
    grvSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(parent, view, position, id) selectedGroqVisionModelId = grvIds[position + 1] end })
    groqVisionModelContainer.addView(grvSpinner)
    toolsCard.addView(groqVisionModelContainer)

    local function updateVisionVisibility(enabled)
        if enabled then
            providerContainer.setVisibility(View.VISIBLE)
            screenModeContainer.setVisibility(View.VISIBLE)
            if imageDescriptionProvider == "groq" then
                groqVisionModelContainer.setVisibility(View.VISIBLE)
            else
                groqVisionModelContainer.setVisibility(View.GONE)
            end
        else
            providerContainer.setVisibility(View.GONE)
            screenModeContainer.setVisibility(View.GONE)
            groqVisionModelContainer.setVisibility(View.GONE)
        end
    end

    provSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(parent, view, position, id)
            imageDescriptionProvider = provIds[position + 1]
            updateVisionVisibility(imageDescriptionEnabled)
        end
    })

    updateVisionVisibility(imageDescriptionEnabled)

    switchImg.setOnCheckedChangeListener(function(_, c)
        imageDescriptionEnabled = c
        updateVisionVisibility(c)
    end)

    local uiCard = createCard(contentL)
    addSectionHeader("الواجهة", uiCard)
    local switchStart = Switch(service); switchStart.setChecked(startWithDictation); switchStart.setOnCheckedChangeListener(function(_, c) startWithDictation=c end)
    createSettingRow("بدء التطبيق بالإملاء", switchStart, uiCard)


    local switchFloat = Switch(service); switchFloat.setChecked(showFloatingSettingsButtonEnabled); switchFloat.setOnCheckedChangeListener(function(_, c) showFloatingSettingsButtonEnabled=c end)
    createSettingRow("الزر العائم", switchFloat, uiCard)

    local btnL = LinearLayout(service); btnL.setOrientation(LinearLayout.VERTICAL); btnL.setGravity(Gravity.CENTER); btnL.setPadding(0,40,0,10)
    local saveBtn = Button(service); saveBtn.setText("💾 حفظ وإغلاق"); styleButton(saveBtn, "primary");
    saveBtn.setOnClickListener(function()
        groqApiKey = groqApiKeyIn.getText().toString()
        geminiApiKey = gemApiKeyIn.getText().toString()
        witApiKey = witApiKeyIn.getText().toString()
        saveSettings()
    end)
    btnL.addView(saveBtn)
    local closeBtn = Button(service); closeBtn.setText("❌ إلغاء"); styleButton(closeBtn, "danger"); closeBtn.setOnClickListener(hideSettings); local lpClose = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); lpClose.topMargin=20; btnL.addView(closeBtn, lpClose)
    contentL.addView(btnL)
    local backBtn = Button(service); backBtn.setText("⬅️ العودة للوحة التحكم"); styleButton(backBtn, "secondary");
    backBtn.setOnClickListener(function() hideSettings(); openMainWindow() end);
    local lpBack = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); lpBack.topMargin=20; btnL.addView(backBtn, lpBack)


    scrollV.addView(contentL); settingsDialog.addView(scrollV)
    local p=WindowManager.LayoutParams(); p.width=WindowManager.LayoutParams.MATCH_PARENT; p.height=WindowManager.LayoutParams.WRAP_CONTENT; p.type=WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY; p.flags=WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; p.format=PixelFormat.TRANSLUCENT; p.gravity=Gravity.CENTER
    pcall(function() wm.addView(settingsDialog,p) end)
end

-- ### Main Voice Recognition Function
function startVoiceRecognition(fromDashboard)
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil; collectgarbage("collect") end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    if not SpeechRecognizer.isRecognitionAvailable(service) then
        service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return
    end
    if not fromDashboard then openMainWindow() end
    stopDictation = false
    createAndShowFloatingButton()
    recognizer = SpeechRecognizer.createSpeechRecognizer(service)
    local intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM); intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, selectedLanguage or defaultSelectedLanguage); intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)

    local startListening

    local listener = RecognitionListener {
        onReadyForSpeech = function() end, onBeginningOfSpeech = function() end, onRmsChanged = function() end, onBufferReceived = function() end, onEndOfSpeech = function() end,
        onError = function(error)
            local shouldRestart = continuousDictationEnabled and not stopDictation and recognizer
            if shouldRestart then
                if error~=SpeechRecognizer.ERROR_NO_MATCH and error~=SpeechRecognizer.ERROR_SPEECH_TIMEOUT and error~=SpeechRecognizer.ERROR_RECOGNIZER_BUSY then
                    startListening()
                else
                    Thread.sleep(250);
                    startListening()
                end
            else
                cleanupResources()
            end
        end,
        onResults = function(results)
            local shouldContinue = continuousDictationEnabled and not stopDictation and recognizer
            local matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if matches and matches.size() > 0 then
                local recognizedText = matches.get(0)
                local lowerRecognizedText = recognizedText:lower()
                local commandProcessed = false

                if lowerRecognizedText == "stop" or recognizedText == "توقف" or lowerRecognizedText == "arrêter" then
                    service.asyncSpeak(getFeedbackString("command_stop", currentDictLangDetails.code)); stopDictation=true; cleanupResources(); return
                

                elseif lowerRecognizedText == "gemini live" or recognizedText == "بث مباشر" or recognizedText == "محادثة حية" then
                    service.asyncSpeak("فتح البث المباشر")
                    stopDictation = true
                    if recognizer then recognizer.destroy(); recognizer = nil end
                    showGeminiLiveWindow()
                    return

                elseif lowerRecognizedText == "settings" or recognizedText == "الضبط" or recognizedText == "ضبط" or recognizedText == "الإعدادات" or lowerRecognizedText == "paramètres" or lowerRecognizedText == "réglages" then
                    service.asyncSpeak("فتح لوحة التحكم");
                    stopDictation = true 
                    if recognizer then recognizer.destroy(); recognizer = nil end
                    openMainWindow()
                    return 
                
                elseif (lowerRecognizedText == "summarize text" or recognizedText == "لخص النص" or lowerRecognizedText == "résumer le texte") and summarizeEnabled then
                    commandProcessed=true
                    if groqApiKey == "" then
                        service.asyncSpeak(getFeedbackString("api_key_missing_for_feature", currentDictLangDetails.code, "Text Summarization"))
                        if shouldContinue then startListening() else cleanupResources() end; return
                    end
                    service.asyncSpeak(getFeedbackString("summarize_start", currentDictLangDetails.code))
                    local scrTxt=getTextFromScreen()
                    if scrTxt and scrTxt:match("%S") then
                        summarizeWithGemini(scrTxt, function(sumTxt)
                            if sumTxt and (sumTxt:match("^Error:") or sumTxt:match("^خطأ:")) then
                                service.asyncSpeak(getFeedbackString("summarize_fail_api", currentDictLangDetails.code, sumTxt))
                            else
                                service.asyncSpeak(getFeedbackString("summarize_success", currentDictLangDetails.code))
                            end
                            showSummaryWindow(sumTxt)
                            if shouldContinue then startListening() end
                        end)
                    else
                        service.asyncSpeak(getFeedbackString("summarize_fail_no_text", currentDictLangDetails.code))
                        showResultWindow("خطأ في التلخيص", getFeedbackString("summarize_fail_no_text", currentDictLangDetails.code))
                        if shouldContinue then startListening() end
                    end
                    return
                elseif (lowerRecognizedText == "describe image" or recognizedText == "وصف الصور" or recognizedText == "وصف الصوره" or recognizedText == "الصور" or lowerRecognizedText == "décrire l'image" or lowerRecognizedText == "description de l'image") and imageDescriptionEnabled then
                    commandProcessed=true
                    if isDescribingImage then
                        service.asyncSpeak(getFeedbackString("image_desc_already_running", currentDictLangDetails.code));
                        if shouldContinue then startListening() end; return
                    end
                    isDescribingImage=true
                    local visionApiKey = (imageDescriptionProvider == "groq") and groqApiKey or geminiApiKey
                    local visionProviderName = (imageDescriptionProvider == "groq") and "Groq Cloud" or "Gemini"
                    if visionApiKey == "" then
                        service.asyncSpeak(getFeedbackString("api_key_missing_for_feature", currentDictLangDetails.code, "Image Description (" .. visionProviderName .. ")"))
                        isDescribingImage=false; if shouldContinue then startListening() else cleanupResources() end; return
                    end

                    service.asyncSpeak(getFeedbackString("image_desc_start", currentDictLangDetails.code))
                    takeScreenshotAndEncode(function(encImg)
                        if encImg then
                            describeImageWithGemini(encImg, function(descRes,rB64)
                                local d,o = parseImageDescription(descRes)
                                if descRes and (descRes:match("^Error:") or descRes:match("^خطأ:")) then
                                    service.asyncSpeak(getFeedbackString("image_desc_fail_api", currentDictLangDetails.code, descRes))
                                else
                                    service.asyncSpeak(getFeedbackString("image_desc_success", currentDictLangDetails.code))
                                end
                                showImageDescriptionWindow(d,o,rB64)
                                isDescribingImage=false
                                if shouldContinue then startListening() end
                            end)
                        else
                            service.asyncSpeak(getFeedbackString("image_desc_fail_screenshot", currentDictLangDetails.code))
                            showResultWindow("خطأ في وصف الصورة", getFeedbackString("image_desc_fail_screenshot", currentDictLangDetails.code))
                            isDescribingImage=false
                            if shouldContinue then startListening() end
                        end
                    end)
                    return
                end

                if not commandProcessed and recognizedText and recognizedText:match("%S") then
                    local function insertFinalResult(finalTextToInsert, wasTranslated)
                        local feedbackKey = wasTranslated and "dictation_insert_verify_translated" or "dictation_insert_verify"
                        if finalTextToInsert and finalTextToInsert:match("%S") then
                             service.asyncSpeak(getFeedbackString(feedbackKey, currentDictLangDetails.code, finalTextToInsert))
                        end

                        local editTextNode = service.getEditText()
                        if editTextNode then
                            local currentContent = editTextNode.getText() or ""
                            local textToActuallyInsert = finalTextToInsert
                            if autoSpaceEnabled and #tostring(currentContent) > 0 and not tostring(currentContent):match("%s$") and not tostring(currentContent):match("[\"\'“‘]$") then
                                textToActuallyInsert = " " .. textToActuallyInsert
                            end
                            service.insertText(editTextNode, textToActuallyInsert)
                            pcall(editTextNode.recycle, editTextNode)
                        end
                        if shouldContinue then startListening() elseif not continuousDictationEnabled then cleanupResources() end
                    end

                    local function handleCorrection(textToCorrect, callback)
                        if geminiCorrectionEnabled then
                            correctWithGemini(textToCorrect, callback)
                        else
                            callback(textToCorrect)
                        end
                    end

                    local function processTextPipeline(text)
                        handleCorrection(text, function(correctedText)
                            if newTranslationFeatureEnabled then
                                local sourceLangDetails = getLanguageDetails(selectedLanguage)
                                local targetLangDetails = getLanguageDetails(translateToLanguage)

                                if sourceLangDetails and targetLangDetails then
                                    if groqApiKey == "" then
                                         service.asyncSpeak(getFeedbackString("api_key_missing_for_feature", currentDictLangDetails.code, "Translation"))
                                         insertFinalResult(correctedText, false); return
                                    end
                                    translateTextWithGemini_New(correctedText, sourceLangDetails.human_readable_for_gemini, targetLangDetails.human_readable_for_gemini, function(translatedText)
                                        if translatedText and not (translatedText:match("^Error:") or translatedText:match("^خطأ:")) then
                                            insertFinalResult(translatedText, true)
                                        else
                                            service.asyncSpeak(getFeedbackString("image_desc_fail_api", currentDictLangDetails.code, translatedText))
                                            insertFinalResult(correctedText, false)
                                        end
                                    end)
                                else
                                    service.asyncSpeak(getFeedbackString("error_translation_lang_invalid", currentDictLangDetails.code))
                                    insertFinalResult(correctedText, false)
                                end
                            else
                                insertFinalResult(correctedText, false)
                            end
                        end)
                    end

                    processTextPipeline(recognizedText)
                    return
                end
            end
            if shouldContinue then startListening() elseif not continuousDictationEnabled and not stopDictation then cleanupResources() end
        end,
        onPartialResults = function() end, onEvent = function() end
    }

    startListening = function()
        if recognizer and not stopDictation then
            pcall(function() recognizer.startListening(intent) end)
        end
    end

    recognizer.setRecognitionListener(listener)
    startListening()
end

-- **On Destroy Cleanup**
function onDestroy()
    cleanupResources()
end

-- **Start the Service**
mainHandler.post(luajava.createProxy("java.lang.Runnable", {
    run = function()
        createAndShowFloatingButton()
        if startWithDictation then startVoiceRecognition(false) else openMainWindow() end
    end
}))