require "import"
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
import "java.util.ArrayList"
import "android.R" -- For android.R.layout resources
import "android.widget.AdapterView" -- For Spinner listener
import "android.speech.tts.TextToSpeech"
import "java.util.Locale"
import "android.speech.tts.Voice" -- New import for Voice object
import "android.graphics.drawable.GradientDrawable" -- Added to fix the graphics nil value error
import "android.os.Handler"
import "android.os.Looper"
import "android.view.inputmethod.InputMethodManager"
import "java.net.HttpURLConnection"
import "java.io.InputStreamReader"
import "java.io.BufferedReader"
import "java.io.OutputStreamWriter"

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
    { name = "Gemini 2.5 Flash (مستقر)", id = "gemini-2.5-flash" }
}
local defaultGeminiModelId = "gemini-3.1-flash-lite-preview"

-- **Groq Models (Optimized for Free Tier)**
local groqModels = {
    { name = "Llama 3.1 8B (Recommended)", id = "llama-3.1-8b-instant" }, 
    { name = "Gemma 2 9B IT (Fast)", id = "gemma2-9b-it" }, 
    { name = "Llama 3.3 70B (High Usage)", id = "llama-3.3-70b-versatile" }, 
    { name = "Mixtral 8x7B", id = "mixtral-8x7b-32768" }
}
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

selectedGroqModelId = prefs.getString("groqModelId", defaultGroqModelId)
selectedAudioModelId = prefs.getString("audioModelId", defaultAudioModelId)

summarizeEnabled = prefs.getBoolean("summarizeEnabled", false)
imageDescriptionEnabled = prefs.getBoolean("imageDescriptionEnabled", false)
screenshotMode = prefs.getString("screenshotMode", "full") -- "full" or "focus"
showFloatingSettingsButtonEnabled = prefs.getBoolean("showFloatingSettingsButton", false)
newTranslationFeatureEnabled = prefs.getBoolean("newTranslationFeatureEnabled", false)
translateToLanguage = prefs.getString("translateToLanguage", defaultTranslateTo)
-- TTS Settings
customTtsEnabled = prefs.getBoolean("customTtsEnabled", false)
selectedTtsEngine = prefs.getString("selectedTtsEngine", "")
selectedTtsVoiceName = prefs.getString("selectedTtsVoiceName", "")

-- **Global Variables**
stopDictation = false
speechRecord = nil
recognizer = nil
local wm = service.getSystemService(Context.WINDOW_SERVICE)
local settingsDialog = nil
local resultWindow = nil
local globalResultContentTextView = nil
isDescribingImage = false
local imageQueryRecognizer = nil
local floatingSettingsBtn = nil
local summaryWindow = nil
local summaryQueryRecognizer = nil
-- TTS Global Variables
local tts = nil
local isTtsInitialized = false
local tempTtsForListing = nil

-- **Set Audio Focus** (for asyncSpeak)
if service and service.setAsyncAudioFocus then
    local success, err = pcall(function()
        service.setAsyncAudioFocus(true)
    end)
end

-- ### UI Helpers for Professional Dark Mode ###
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
    btn.setBackgroundDrawable(bg)
end

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
    floatingSettingsBtn.setOnClickListener(function() openSettings() end)
    local params = WindowManager.LayoutParams()
    params.width = WindowManager.LayoutParams.WRAP_CONTENT; params.height = WindowManager.LayoutParams.WRAP_CONTENT
    params.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
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

    if tts then
        local s,e = pcall(function() tts.stop(); tts.shutdown() end)
        tts = nil
        isTtsInitialized = false
    end
    if tempTtsForListing then
        local s,e = pcall(function() tempTtsForListing.shutdown() end)
        tempTtsForListing = nil
    end

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

function initTextToSpeech(enginePackageName, voiceNameToSet, onInitCallback)
    if tts then
        local s,e = pcall(function() tts.stop(); tts.shutdown() end)
        tts = nil
        isTtsInitialized = false
    end

    local listener = TextToSpeech.OnInitListener {
        onInit = function(status)
            if status == TextToSpeech.SUCCESS then
                isTtsInitialized = true
                if tts and isTtsInitialized then
                    local initialLocale = getLocaleForLangCode("ar")
                    local langResult = tts.setLanguage(initialLocale)
                    if langResult == TextToSpeech.LANG_MISSING_DATA or langResult == TextToSpeech.LANG_NOT_SUPPORTED then
                        local fallbackLocale = Locale.ENGLISH
                        tts.setLanguage(fallbackLocale)
                    end

                    if voiceNameToSet and voiceNameToSet ~= "" then
                        local voiceSetSuccess = false
                        local s_getVoices, r_voicesSet = pcall(function() return tts.getVoices() end)
                        if s_getVoices and r_voicesSet then
                            local voiceIterator = r_voicesSet.iterator()
                            while voiceIterator.hasNext() do
                                local voiceObj = voiceIterator.next()
                                if voiceObj and voiceObj.getName() == voiceNameToSet then
                                    local s_setVoice, r_setVoice = pcall(function() tts.setVoice(voiceObj) end)
                                    if s_setVoice then voiceSetSuccess = true end
                                    break
                                end
                            end
                        end
                    end
                end
            else
                isTtsInitialized = false
            end
            if onInitCallback then onInitCallback(isTtsInitialized) end
        end
    }

    local context = service
    local pcall_status, pcall_result
    if enginePackageName and enginePackageName ~= "" then
        pcall_status, pcall_result = pcall(function() tts = TextToSpeech(context, listener, enginePackageName) end)
    else
        pcall_status, pcall_result = pcall(function() tts = TextToSpeech(context, listener) end)
    end

    if not pcall_status then
        isTtsInitialized = false
        if tts then pcall(function() tts.shutdown() end); tts = nil end
        if onInitCallback then onInitCallback(false) end
    end
end

function speakAIResponseViaCustomTTS(text, langCodeForSpeech)
    if not customTtsEnabled or not tts or not isTtsInitialized then
        service.asyncSpeak(text)
        return
    end

    local targetLocale = getLocaleForLangCode(langCodeForSpeech)
    local langSetResult

    local s_setLang, r_setLang_err = pcall(function() langSetResult = tts.setLanguage(targetLocale) end)
    if not s_setLang then
        service.asyncSpeak(text)
        return
    end

    if langSetResult == TextToSpeech.LANG_MISSING_DATA or langSetResult == TextToSpeech.LANG_NOT_SUPPORTED then
        local baseLang = targetLocale.getLanguage()
        if baseLang and baseLang ~= "" then
            local baseLocale = Locale(baseLang)
            pcall(function() tts.setLanguage(baseLocale) end)
        end
    end
    local s_speak, e_speak = pcall(function() tts.speak(text, TextToSpeech.QUEUE_FLUSH, nil, nil) end)
    if not s_speak then
        service.asyncSpeak("خطأ في النطق مع TTS المخصص. " .. text)
    end
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

                -- Step 1: Initialize Resumable Upload
                local initUrl = URL("https://generativelanguage.googleapis.com/upload/v1beta/files?key=" .. apiKey)
                local conn = initUrl.openConnection()
                conn.setRequestMethod("POST")
                conn.setDoOutput(true)
                conn.setRequestProperty("X-Goog-Upload-Protocol", "resumable")
                conn.setRequestProperty("X-Goog-Upload-Command", "start")
                conn.setRequestProperty("X-Goog-Upload-Header-Content-Length", tostring(fileSize))
                conn.setRequestProperty("X-Goog-Upload-Header-Content-Type", mimeType)
                conn.setRequestProperty("Content-Type", "application/json")

                local metadata = JSONObject()
                local fileObj = JSONObject()
                fileObj.put("display_name", fileName)
                metadata.put("file", fileObj)

                local osw = OutputStreamWriter(conn.getOutputStream())
                osw.write(metadata.toString())
                osw.flush()
                osw.close()

                local responseCode = conn.getResponseCode()
                if responseCode ~= 200 then
                    local errorMsg = "Upload initialization failed: " .. responseCode
                    local handler = Handler(Looper.getMainLooper())
                    handler.post(Runnable{run=function() callback("Error: " .. errorMsg) end})
                    return
                end

                local uploadUrl = conn.getHeaderField("X-Goog-Upload-URL")
                conn.disconnect()

                -- Step 2: Upload File Bytes
                local putUrl = URL(uploadUrl)
                local putConn = putUrl.openConnection()
                putConn.setRequestMethod("PUT") -- PUT is standard for resumable upload parts
                putConn.setDoOutput(true)
                putConn.setFixedLengthStreamingMode(fileSize)
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

                local handler = Handler(Looper.getMainLooper())
                handler.post(Runnable{
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
                })
            end)
            if not success then
                local handler = Handler(Looper.getMainLooper())
                handler.post(Runnable{run=function() callback("Error Exception: " .. tostring(err)) end})
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
                    local fileSize = file.length()
                    local url = URL("https://api.groq.com/openai/v1/audio/transcriptions")
                    local conn = url.openConnection()
                    conn.setFixedLengthStreamingMode(-1) -- Use -1 if content length is unknown or multipart
                    local boundary = "*****" .. tostring(System.currentTimeMillis()) .. "*****"
                    conn.setDoInput(true)
                    conn.setDoOutput(true)
                    conn.setUseCaches(false)
                    conn.setRequestMethod("POST")
                    conn.setRequestProperty("Connection", "Keep-Alive")
                    conn.setRequestProperty("Authorization", "Bearer " .. groqApiKey)
                    conn.setRequestProperty("Content-Type", "multipart/form-data;boundary=" .. boundary)
                    local dos = DataOutputStream(conn.getOutputStream())
                    dos.writeBytes("--" .. boundary .. "\r\n")
                    dos.writeBytes("Content-Disposition: form-data; name=\"model\"\r\n\r\n")
                    dos.writeBytes(modId .. "\r\n")
                    local file = File(filePath)
                    dos.writeBytes("--" .. boundary .. "\r\n")
                    dos.writeBytes("Content-Disposition: form-data; name=\"file\"; filename=\"" .. file.getName() .. "\"\r\n")
                    dos.writeBytes("Content-Type: application/octet-stream\r\n\r\n")
                    local fileInputStream = FileInputStream(file)
                    local bufferSize = 4096
                    local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, bufferSize)
                    local bytesRead = fileInputStream:read(buffer, 0, bufferSize)
                    while bytesRead > 0 do
                        dos.write(buffer, 0, bytesRead)
                        bytesRead = fileInputStream:read(buffer, 0, bufferSize)
                    end
                    fileInputStream:close()
                    dos.writeBytes("\r\n")
                    dos.writeBytes("--" .. boundary .. "--\r\n")
                    dos.flush()
                    dos.close()
                    local responseCode = conn.getResponseCode()
                    local is = responseCode == 200 and conn.getInputStream() or conn.getErrorStream()
                    local br = BufferedReader(InputStreamReader(is))
                    local response = ""
                    local line = br.readLine()
                    while line ~= nil do response = response .. line; line = br.readLine() end
                    br.close()
                    local handler = Handler(Looper.getMainLooper())
                    handler.post(Runnable{
                        run = function()
                            if responseCode == 200 then
                                local s, j = pcall(function() return JSONObject(response) end)
                                if s and j.has("text") then callback(j.getString("text"), true) else callback("Error: " .. response, true) end
                            else callback("Error: " .. responseCode .. " - " .. response, true) end
                        end
                    })
                end)
                if not success then
                    local handler = Handler(Looper.getMainLooper())
                    handler.post(Runnable{run=function() callback("Error Exception: " .. tostring(err), true) end})
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
                    
                    local url = URL("https://api.wit.ai/dictation?v=20240304")
                    local conn = url.openConnection()
                    conn.setConnectTimeout(60000)
                    conn.setReadTimeout(300000)
                    conn.setDoInput(true)
                    conn.setDoOutput(true)
                    conn.setUseCaches(false)
                    conn.setRequestMethod("POST")
                    conn.setRequestProperty("Authorization", "Bearer " .. witApiKey)
                    conn.setRequestProperty("Content-Type", mime)
                    
                    conn.setChunkedStreamingMode(8192)
                    
                    local dos = DataOutputStream(conn.getOutputStream())
                    local file = File(filePath)
                    local fileInputStream = FileInputStream(file)
                    local bufferSize = 8192
                    local buffer = luajava.newArray(luajava.bindClass("java.lang.Byte").TYPE, bufferSize)
                    local bytesRead = fileInputStream:read(buffer, 0, bufferSize)
                    while bytesRead > 0 do
                        dos.write(buffer, 0, bytesRead)
                        dos.flush()
                        bytesRead = fileInputStream:read(buffer, 0, bufferSize)
                    end
                    fileInputStream:close()
                    dos.close()
                    
                    local responseCode = conn.getResponseCode()
                    local is = responseCode == 200 and conn.getInputStream() or conn.getErrorStream()
                    local br = BufferedReader(InputStreamReader(is))
                    local accumulatedFinals = ""
                    local lastText = ""
                    local handler = Handler(Looper.getMainLooper())
                    
                    local line = br.readLine()
                    local jsonBuffer = ""
                    while line ~= nil do 
                        jsonBuffer = jsonBuffer .. line .. "\n"
                        if line:match("}") then
                            local s, j = pcall(function() return JSONObject(jsonBuffer) end)
                            if s then
                                if j.has("text") then
                                    local currentText = j.getString("text")
                                    lastText = currentText
                                    local isFinal = j.has("is_final") and j.getBoolean("is_final")
                                    
                                    local displayStr = accumulatedFinals
                                    if isFinal then
                                        accumulatedFinals = accumulatedFinals .. (accumulatedFinals == "" and "" or " ") .. currentText
                                        displayStr = accumulatedFinals
                                    else
                                        displayStr = accumulatedFinals .. (accumulatedFinals == "" and "" or " ") .. currentText
                                    end
                                    
                                    handler.post(Runnable{
                                        run = function()
                                            callback(displayStr, false)
                                        end
                                    })
                                end
                                jsonBuffer = ""
                            end
                        end
                        line = br.readLine() 
                    end
                    br.close()
                    
                    handler.post(Runnable{
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
                    })
                end)
                if not success then
                    local handler = Handler(Looper.getMainLooper())
                    handler.post(Runnable{run=function() callback("Error Exception: " .. tostring(err), true) end})
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
    
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
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
    
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
    pcall(function() wm.addView(summaryWindow, winP) end)

    if summary and not summary:match("^Error:") and not summary:match("^خطأ:") and summary ~= "" then
        speakAIResponseViaCustomTTS(summary, "ar") 
    end
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
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=WindowManager.LayoutParams.WRAP_CONTENT; winP.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.1; winP.verticalMargin=0.1
    pcall(function() wm.addView(resultWindow, winP) end)
end

function openFilePickerWindow(startPath, onFileSelected)
    local fpWindow = LinearLayout(service); fpWindow.setOrientation(LinearLayout.VERTICAL); fpWindow.setBackgroundColor(0xFF1E1E1E); fpWindow.setPadding(35,35,35,35)
    local titleV = TextView(service); titleV.setText("اختر ملف صوتي"); titleV.setTextSize(20); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0,0,0,20); fpWindow.addView(titleV)
    local scrollV = ScrollView(service); local listL = LinearLayout(service); listL.setOrientation(LinearLayout.VERTICAL); scrollV.addView(listL); fpWindow.addView(scrollV, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1.0))
    local function loadDir(path)
        listL.removeAllViews()
        local f = File(path); local list = nil; pcall(function() list = f.listFiles() end)
        if path ~= "/storage/emulated/0" and f.getParent() then
            local backBtn = Button(service); backBtn.setText("📁 .. (الرجوع)"); backBtn.setTextColor(0xFF64B5F6); backBtn.setBackgroundColor(0x00000000); backBtn.setGravity(Gravity.START | Gravity.CENTER_VERTICAL); backBtn.setOnClickListener(function() loadDir(f.getParent()) end); listL.addView(backBtn)
        end
        if list then
            for i=0, #list-1 do
                local file = list[i]
                if not file.isHidden() then
                    local fname = file.getName():lower()
                    if file.isDirectory() or fname:match("%.mp3$") or fname:match("%.wav$") or fname:match("%.m4a$") or fname:match("%.ogg$") or fname:match("%.aac$") then
                        local btn = Button(service); btn.setText(file.isDirectory() and ("📁 " .. file.getName()) or ("🎵 " .. file.getName())); btn.setTextColor(0xFFE0E0E0); btn.setBackgroundColor(0x00000000); btn.setGravity(Gravity.START | Gravity.CENTER_VERTICAL)
                        btn.setOnClickListener(function() if file.isDirectory() then loadDir(file.getAbsolutePath()) else pcall(function() wm.removeView(fpWindow) end); onFileSelected(file.getAbsolutePath()) end end); listL.addView(btn)
                    end
                end
            end
        end
    end
    loadDir(startPath)
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setOnClickListener(function() pcall(function() wm.removeView(fpWindow) end) end); local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); btnP.topMargin=20; fpWindow.addView(closeBtn,btnP)
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.8); winP.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; pcall(function() wm.addView(fpWindow, winP) end)
end

function openPdfPickerWindow(startPath, onFileSelected)
    local fpWindow = LinearLayout(service); fpWindow.setOrientation(LinearLayout.VERTICAL); fpWindow.setBackgroundColor(0xFF1E1E1E); fpWindow.setPadding(35,35,35,35)
    local titleV = TextView(service); titleV.setText("اختر ملف PDF"); titleV.setTextSize(20); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0,0,0,20); fpWindow.addView(titleV)
    local scrollV = ScrollView(service); local listL = LinearLayout(service); listL.setOrientation(LinearLayout.VERTICAL); scrollV.addView(listL); fpWindow.addView(scrollV, LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1.0))
    local function loadDir(path)
        listL.removeAllViews()
        local f = File(path); local list = nil; pcall(function() list = f.listFiles() end)
        if path ~= "/storage/emulated/0" and f.getParent() then
            local backBtn = Button(service); backBtn.setText("📁 .. (الرجوع)"); backBtn.setTextColor(0xFF64B5F6); backBtn.setBackgroundColor(0x00000000); backBtn.setGravity(Gravity.START | Gravity.CENTER_VERTICAL); backBtn.setOnClickListener(function() loadDir(f.getParent()) end); listL.addView(backBtn)
        end
        if list then
            for i=0, #list-1 do
                local file = list[i]
                if not file.isHidden() then
                    local fname = file.getName():lower()
                    if file.isDirectory() or fname:match("%.pdf$") then
                        local btn = Button(service); btn.setText(file.isDirectory() and ("📁 " .. file.getName()) or ("📄 " .. file.getName())); btn.setTextColor(0xFFE0E0E0); btn.setBackgroundColor(0x00000000); btn.setGravity(Gravity.START | Gravity.CENTER_VERTICAL)
                        btn.setOnClickListener(function() if file.isDirectory() then loadDir(file.getAbsolutePath()) else pcall(function() wm.removeView(fpWindow) end); onFileSelected(file.getAbsolutePath()) end end); listL.addView(btn)
                    end
                end
            end
        end
    end
    loadDir(startPath)
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger"); closeBtn.setOnClickListener(function() pcall(function() wm.removeView(fpWindow) end) end); local btnP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); btnP.topMargin=20; fpWindow.addView(closeBtn,btnP)
    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.8); winP.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; pcall(function() wm.addView(fpWindow, winP) end)
end

function showPdfViewerWindow(filePath, fileUri)
    if resultWindow then pcall(function() wm.removeView(resultWindow) end); resultWindow = nil end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    local accumulatedQnA = "ملف PDF محمل.\n\n"
    
    resultWindow = LinearLayout(service); resultWindow.setOrientation(LinearLayout.VERTICAL); resultWindow.setBackgroundColor(0xFF121212); resultWindow.setPadding(30,30,30,30)
    
    local titleV = TextView(service); titleV.setText("عارض ومحادثة PDF"); titleV.setTextSize(22); titleV.setTextColor(0xFFFFFFFF); titleV.setTypeface(nil, Typeface.BOLD); titleV.setGravity(Gravity.CENTER); titleV.setPadding(0,0,0,20); resultWindow.addView(titleV)
    
    local scrollV = ScrollView(service); local contentL = LinearLayout(service); contentL.setOrientation(LinearLayout.VERTICAL); contentL.setPadding(10,10,10,10)
    
    local pagesCache = {}
    local currentCacheIdx = 1

    local pageCtrlL = LinearLayout(service); pageCtrlL.setOrientation(LinearLayout.HORIZONTAL); pageCtrlL.setGravity(Gravity.CENTER_VERTICAL); pageCtrlL.setPadding(0,0,0,20)
    local l1 = TextView(service); l1.setText("من:"); l1.setTextColor(0xFFB0B0B0); l1.setPadding(0,0,10,0); pageCtrlL.addView(l1)
    local e1 = EditText(service); e1.setInputType(2); e1.setText("1"); e1.setHint("1"); styleEditText(e1); local lp1 = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); lp1.rightMargin=10; pageCtrlL.addView(e1, lp1)
    local l2 = TextView(service); l2.setText("إلى:"); l2.setTextColor(0xFFB0B0B0); l2.setPadding(0,0,10,0); pageCtrlL.addView(l2)
    local e2 = EditText(service); e2.setInputType(2); e2.setText("5"); e2.setHint("5"); styleEditText(e2); local lp2 = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0); pageCtrlL.addView(e2, lp2)

    local function showKeyboard(view)
        if not view then return end
        view.requestFocus()
        local imm = service.getSystemService(Context.INPUT_METHOD_SERVICE)
        if imm then imm.showSoftInput(view, InputMethodManager.SHOW_IMPLICIT) end
    end
    e1.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then showKeyboard(v) end return false end })
    e2.setOnTouchListener(View.OnTouchListener{ onTouch = function(v, event) if event.getAction() == MotionEvent.ACTION_UP then showKeyboard(v) end return false end })
    contentL.addView(pageCtrlL)
    
    local loadBtn = Button(service); loadBtn.setText("📂 تحميل الصفحات المحددة"); styleButton(loadBtn, "primary")
    local btnP1 = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); btnP1.setMargins(0,0,0,20)
    loadBtn.setLayoutParams(btnP1)
    contentL.addView(loadBtn)

    local navL = LinearLayout(service); navL.setOrientation(LinearLayout.HORIZONTAL); navL.setGravity(Gravity.CENTER); navL.setPadding(0,0,0,20)
    local prevBtn = Button(service); prevBtn.setText("⬅️ السابق"); styleButton(prevBtn, "secondary")
    local pageInd = TextView(service); pageInd.setText("صفحة: -"); pageInd.setTextColor(0xFFFFFFFF); pageInd.setTextSize(18); pageInd.setPadding(30,0,30,0)
    local nextBtn = Button(service); nextBtn.setText("التالي ➡️"); styleButton(nextBtn, "secondary")
    navL.addView(prevBtn); navL.addView(pageInd); navL.addView(nextBtn)
    contentL.addView(navL)

    local pageContentTV = TextView(service); pageContentTV.setText("يرجى تحديد نطاق الصفحات والضغط على تحميل."); pageContentTV.setTextSize(18); pageContentTV.setTextColor(0xFFE0E0E0); pageContentTV.setPadding(10,20,10,20); pageContentTV.setTextIsSelectable(true)
    contentL.addView(pageContentTV)

    local qnaHistoryLayout = LinearLayout(service)
    qnaHistoryLayout.setOrientation(LinearLayout.VERTICAL)
    contentL.addView(qnaHistoryLayout)
    
    local voiceQBtn = Button(service); voiceQBtn.setText("🎤 التحدث للسؤال عن الملف"); styleButton(voiceQBtn, "primary")
    local btnP2 = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); btnP2.setMargins(0,10,0,20)
    voiceQBtn.setLayoutParams(btnP2)
    contentL.addView(voiceQBtn)

    local function updateDisplayPage()
        if pagesCache and #pagesCache > 0 then
            local text = pagesCache[currentCacheIdx]
            pageInd.setText("صفحة: " .. currentCacheIdx .. "/" .. #pagesCache)
            pageContentTV.setText(text)
            speakAIResponseViaCustomTTS(text, "ar")
        end
    end

    local function fetchRangeContent(startP, endP)
        pageContentTV.setText("⏳ جاري استخراج النصوص من الصفحة " .. startP .. " إلى " .. endP .. "...")
        local q = "استخرج النص الموجود في هذا الملف من الصفحة " .. startP .. " إلى الصفحة " .. endP .. ". افصل بين كل صفحة وأخرى بوضع العلامة التالية فقط: ===PAGE_BREAK==="

        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
        local headers = {["Content-Type"] = "application/json"}

        local root = JSONObject()
        local contentObj = JSONObject()
        local partsArray = JSONArray()

        local filePart = JSONObject()
        local fileData = JSONObject()
        fileData.put("mime_type", "application/pdf")
        fileData.put("file_uri", fileUri)
        filePart.put("file_data", fileData)
        partsArray.put(filePart)

        local textPart = JSONObject()
        textPart.put("text", q)
        partsArray.put(textPart)

        contentObj.put("parts", partsArray)
        local contentsArray = JSONArray()
        contentsArray.put(contentObj)
        root.put("contents", contentsArray)

        Http.post(url, root.toString(), headers, function(status, response)
            local resultTxt = ""
            if status == 200 then
                local s, j = pcall(function() return JSONObject(response) end)
                if s and j.has("candidates") then
                    local cands = j.getJSONArray("candidates")
                    if cands.length() > 0 then
                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                            resultTxt = parts.getJSONObject(0).getString("text")
                        end
                    end
                end
            else
                resultTxt = "Error: " .. status .. " - " .. tostring(response)
            end

            local handler = Handler(Looper.getMainLooper())
            handler.post(Runnable{
                run = function()
                    if resultTxt:match("^Error:") then
                        pageContentTV.setText(resultTxt)
                    else
                        pagesCache = {}
                        local delimiter = "===PAGE_BREAK==="
                        local s = 1
                        while true do
                            local e = string.find(resultTxt, delimiter, s, true)
                            if not e then
                                local last = string.sub(resultTxt, s)
                                if last and last ~= "" and not last:match("^%s*$") then
                                    table.insert(pagesCache, (last:gsub("^%s*", ""):gsub("%s*$", "")))
                                end
                                break
                            end
                            local part = string.sub(resultTxt, s, e - 1)
                            if part and part ~= "" and not part:match("^%s*$") then
                                table.insert(pagesCache, (part:gsub("^%s*", ""):gsub("%s*$", "")))
                            end
                            s = e + #delimiter
                        end

                        if #pagesCache > 0 then
                            currentCacheIdx = 1
                            updateDisplayPage()
                        else
                            pageContentTV.setText("تعذر تقسيم النص إلى صفحات. النص المستخرج:\n" .. resultTxt)
                        end
                    end
                end
            })
        end)
    end

    local function askGeminiPdf(promptText, aiBubble)
        local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
        local headers = {["Content-Type"] = "application/json"}
        
        local root = JSONObject()
        local contentObj = JSONObject()
        local partsArray = JSONArray()
        
        local filePart = JSONObject()
        local fileData = JSONObject()
        fileData.put("mime_type", "application/pdf")
        fileData.put("file_uri", fileUri)
        filePart.put("file_data", fileData)
        partsArray.put(filePart)
        
        local textPart = JSONObject()
        textPart.put("text", promptText)
        partsArray.put(textPart)
        
        contentObj.put("parts", partsArray)
        local contentsArray = JSONArray()
        contentsArray.put(contentObj)
        root.put("contents", contentsArray)
        
        Http.post(url, root.toString(), headers, function(status, response)
            local resultTxt = "Error: " .. status
            if status == 200 then
                local s, j = pcall(function() return JSONObject(response) end)
                if s and j.has("candidates") then
                    local cands = j.getJSONArray("candidates")
                    if cands.length() > 0 then
                        local parts = cands.getJSONObject(0).getJSONObject("content").getJSONArray("parts")
                        if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                            resultTxt = parts.getJSONObject(0).getString("text")
                        end
                    end
                end
            else
                resultTxt = resultTxt .. " - " .. tostring(response)
            end
            local handler = Handler(Looper.getMainLooper())
            handler.post(Runnable{
                run = function()
                    if aiBubble then 
                        aiBubble.getChildAt(0).setText(resultTxt) 
                        speakAIResponseViaCustomTTS(resultTxt, "ar")
                        accumulatedQnA = accumulatedQnA .. "AI: " .. resultTxt .. "\n\n"
                        pcall(function() scrollV.fullScroll(ScrollView.FOCUS_DOWN) end)
                    end
                end
            })
        end)
    end
    
    voiceQBtn.setOnClickListener(function()
        if not SpeechRecognizer.isRecognitionAvailable(service) then service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return end
        voiceQBtn.setText("⏳ جارٍ الاستماع..."); voiceQBtn.setEnabled(false);
        
        local localRec = SpeechRecognizer.createSpeechRecognizer(service)
        local qIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM); qIntent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, selectedLanguage or "ar"); qIntent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); qIntent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)
        localRec.setRecognitionListener(RecognitionListener{
            onReadyForSpeech=function() voiceQBtn.setText("...تحدث الآن") end, onBeginningOfSpeech=function()end, onRmsChanged=function()end, onBufferReceived=function()end, onEndOfSpeech=function() voiceQBtn.setText("🤔 جاري المعالجة...") end,
            onError=function(e) service.asyncSpeak("خطأ استماع"); pcall(function()localRec.destroy()end); voiceQBtn.setText("🎤 التحدث للسؤال عن الملف"); voiceQBtn.setEnabled(true); end,
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

                        local q = accumulatedQnA .. "Question: " .. uQ
                        askGeminiPdf(q, aiBubble)
                        accumulatedQnA = accumulatedQnA .. "User: " .. uQ .. "\n"
                    end
                end
                pcall(function()localRec.destroy()end)
                voiceQBtn.setText("🎤 التحدث للسؤال عن الملف"); voiceQBtn.setEnabled(true)
            end,
            onPartialResults=function()end, onEvent=function()end
        }); pcall(function() localRec.startListening(qIntent) end)
    end)
    
    scrollV.addView(contentL); local scrP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,0,1.0); resultWindow.addView(scrollV,scrP)
    
    local closeBtn = Button(service); closeBtn.setText("❌ إغلاق"); styleButton(closeBtn, "danger")
    closeBtn.setOnClickListener(function() if resultWindow then pcall(function()wm.removeView(resultWindow)end); resultWindow=nil end end)
    local clP = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.WRAP_CONTENT); clP.topMargin=10; resultWindow.addView(closeBtn,clP)
    
    loadBtn.setOnClickListener(function()
        local sP = e1.getText().toString()
        local eP = e2.getText().toString()
        if sP == "" or eP == "" then
            service.asyncSpeak("يرجى إدخال نطاق الصفحات.")
            return
        end
        local nS, nE = tonumber(sP), tonumber(eP)
        if not nS or not nE then
            service.asyncSpeak("خطأ: يرجى إدخال أرقام صالحة.")
            return
        end
        if nS > nE then
            service.asyncSpeak("خطأ: صفحة البداية يجب أن تكون أقل من أو تساوي صفحة النهاية.")
            return
        end
        fetchRangeContent(sP, eP)
    end)

    prevBtn.setOnClickListener(function()
        if pagesCache and #pagesCache > 0 and currentCacheIdx > 1 then
            currentCacheIdx = currentCacheIdx - 1
            updateDisplayPage()
        end
    end)

    nextBtn.setOnClickListener(function()
        if pagesCache and #pagesCache > 0 and currentCacheIdx < #pagesCache then
            currentCacheIdx = currentCacheIdx + 1
            updateDisplayPage()
        end
    end)

    local winP = WindowManager.LayoutParams(); winP.width=WindowManager.LayoutParams.MATCH_PARENT; winP.height=math.floor(service.getResources().getDisplayMetrics().heightPixels*0.85); winP.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; winP.flags=WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; winP.format=PixelFormat.TRANSLUCENT; winP.gravity=Gravity.CENTER; winP.horizontalMargin=0.05; winP.verticalMargin=0.05
    pcall(function() wm.addView(resultWindow, winP) end)
    
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
                                local handler = Handler(Looper.getMainLooper())
                                handler.post(Runnable{run=function()
                                    pageContentTV.setText(msg)
                                    service.asyncSpeak(msg)
                                end})
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
        showPdfViewerWindow(filePath, fileUriOrError)
    end)
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
    customTtsEnabled = customTtsEnabled or false

    local editor = prefs.edit()
    editor.putString("language", selectedLanguage or defaultSelectedLanguage)
    editor.putBoolean("continuousDictation", continuousDictationEnabled)
    editor.putBoolean("autoSpaceEnabled", autoSpaceEnabled)
    editor.putBoolean("geminiCorrectionEnabled", geminiCorrectionEnabled)
    
    editor.putString("geminiApiKey", geminiApiKey or "")
    editor.putString("groqApiKey", groqApiKey or "")
    editor.putString("witApiKey", witApiKey or "")
    editor.putString("geminiModelId", selectedGeminiModelId or defaultGeminiModelId)
    editor.putString("groqModelId", selectedGroqModelId or defaultGroqModelId)
    editor.putString("audioModelId", selectedAudioModelId or defaultAudioModelId)

    editor.putBoolean("summarizeEnabled", summarizeEnabled)
    editor.putBoolean("imageDescriptionEnabled", imageDescriptionEnabled)
    editor.putString("screenshotMode", screenshotMode or "full")
    editor.putBoolean("showFloatingSettingsButton", showFloatingSettingsButtonEnabled)
    editor.putBoolean("newTranslationFeatureEnabled", newTranslationFeatureEnabled)
    editor.putString("translateToLanguage", translateToLanguage or defaultTranslateTo)
    editor.putBoolean("customTtsEnabled", customTtsEnabled)
    editor.putString("selectedTtsEngine", selectedTtsEngine or "")
    editor.putString("selectedTtsVoiceName", selectedTtsVoiceName or "")
    editor.apply()

    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    service.asyncSpeak(getFeedbackString("settings_saved", currentDictLangDetails.code))

    if showFloatingSettingsButtonEnabled and not floatingSettingsBtn then createAndShowFloatingButton()
    elseif not showFloatingSettingsButtonEnabled and floatingSettingsBtn then removeFloatingButton() end

    if customTtsEnabled then
        initTextToSpeech(selectedTtsEngine, selectedTtsVoiceName)
    else
        if tts then
            pcall(function() tts.stop(); tts.shutdown() end)
            tts = nil
            isTtsInitialized = false
        end
    end
    hideSettings()
end

function hideSettings()
    if settingsDialog then local r = pcall(function() wm.removeView(settingsDialog) end); if r then settingsDialog = nil end end
    if tempTtsForListing then
        pcall(function() tempTtsForListing.shutdown() end)
        tempTtsForListing = nil
    end
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
    titleTxt.setText("إعدادات الإملاء الصوتي ✨")
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
    grFetchBtn.setOnClickListener(function() fetchGroqModels(function() hideSettings(); openSettings() end) end)
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

    local switchImg = Switch(service); switchImg.setChecked(imageDescriptionEnabled); switchImg.setOnCheckedChangeListener(function(_, c) imageDescriptionEnabled=c end)
    createSettingRow("وصف الصور", switchImg, toolsCard)

    local transcribeFileBtn = Button(service); transcribeFileBtn.setText("📁 تحويل ملف صوتي إلى نص"); styleButton(transcribeFileBtn, "secondary")
    transcribeFileBtn.setOnClickListener(function()
        groqApiKey = groqApiKeyIn.getText().toString()
        geminiApiKey = gemApiKeyIn.getText().toString()
        witApiKey = witApiKeyIn.getText().toString()
        saveSettings()
        hideSettings()
        openFilePickerWindow("/storage/emulated/0", function(selectedPath)
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
    toolsCard.addView(transcribeFileBtn)
    
    local readPdfBtn = Button(service); readPdfBtn.setText("📄 قراءة ومحادثة PDF (Gemini)"); styleButton(readPdfBtn, "secondary")
    readPdfBtn.setOnClickListener(function()
        hideSettings()
        openPdfPickerWindow("/storage/emulated/0", function(selectedPath)
            loadPdfAndShowViewer(selectedPath)
        end)
    end)
    local btnParamsPdf = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT); btnParamsPdf.topMargin = 15;
    toolsCard.addView(readPdfBtn, btnParamsPdf)

    -- SECTION: TTS
    local uiCard = createCard(contentL)
    addSectionHeader("الواجهة والنطق", uiCard)

    local switchFloat = Switch(service); switchFloat.setChecked(showFloatingSettingsButtonEnabled); switchFloat.setOnCheckedChangeListener(function(_, c) showFloatingSettingsButtonEnabled=c end)
    createSettingRow("الزر العائم", switchFloat, uiCard)

    local switchTts = Switch(service); switchTts.setChecked(customTtsEnabled); switchTts.setOnCheckedChangeListener(function(_, c) customTtsEnabled=c end)
    createSettingRow("نطق AI مخصص", switchTts, uiCard)

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

    scrollV.addView(contentL); settingsDialog.addView(scrollV)
    local p=WindowManager.LayoutParams(); p.width=WindowManager.LayoutParams.MATCH_PARENT; p.height=WindowManager.LayoutParams.WRAP_CONTENT; p.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; p.flags=WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN; p.format=PixelFormat.TRANSLUCENT; p.gravity=Gravity.CENTER
    pcall(function() wm.addView(settingsDialog,p) end)
end

-- ### Main Voice Recognition Function
function startVoiceRecognition()
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil; collectgarbage("collect") end
    local currentDictLangDetails = getLanguageDetails(selectedLanguage)
    if not SpeechRecognizer.isRecognitionAvailable(service) then
        service.asyncSpeak(getFeedbackString("error_speech_unavailable", currentDictLangDetails.code)); return
    end
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
                
                elseif lowerRecognizedText == "settings" or recognizedText == "الضبط" or recognizedText == "ضبط" or recognizedText == "الإعدادات" or lowerRecognizedText == "paramètres" or lowerRecognizedText == "réglages" then
                    service.asyncSpeak(getFeedbackString("command_settings", currentDictLangDetails.code)); 
                    stopDictation = true 
                    if recognizer then recognizer.destroy(); recognizer = nil end
                    openSettings()
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
                    if geminiApiKey == "" then
                        service.asyncSpeak(getFeedbackString("api_key_missing_for_feature", currentDictLangDetails.code, "Image Description"))
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
                                        insertFinalResult(translatedText, true)
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

-- **Start the Service & Initialize TTS if enabled**
if customTtsEnabled then
    initTextToSpeech(selectedTtsEngine, selectedTtsVoiceName, function(success)
    end)
end
createAndShowFloatingButton()
startVoiceRecognition()