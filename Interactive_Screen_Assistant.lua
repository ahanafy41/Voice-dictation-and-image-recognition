-- Interactive Screen Assistant
-- This script provides voice-based interaction with the screen.

-- #region Library Imports
require "import"
import "android.widget.*"
import "android.speech.RecognizerIntent"
import "android.speech.SpeechRecognizer"
import "android.speech.RecognitionListener"
import "android.content.Intent"
import "android.view.WindowManager"
import "android.graphics.PixelFormat"
import "android.content.Context"
import "android.view.View"
import "android.content.SharedPreferences"
import "android.net.Uri"
import "org.json.JSONObject"
import "android.view.Gravity"
import "android.view.accessibility.AccessibilityNodeInfo"
import "android.accessibilityservice.AccessibilityService"
import "java.io.File"
import "java.io.FileInputStream"
import "android.util.Base64"
import "android.graphics.Bitmap"
import "java.io.ByteArrayOutputStream"
import "android.widget.RadioGroup"
import "android.widget.RadioButton"
import "android.widget.ScrollView"
import "android.graphics.Typeface"
import "android.provider.Settings"
import "android.widget.ArrayAdapter"
import "android.widget.Spinner"
import "java.util.ArrayList"
import "android.R"
import "android.widget.AdapterView"
import "android.speech.tts.TextToSpeech"
import "java.util.Locale"
-- #endregion

-- Forward declarations for circular dependencies
local startVoiceRecognition
local openSettings
local hideSettings

-- #region Utility Functions
local function escapeJsonString(str)
    if not str then return "" end
    str = str:gsub('\\', '\\\\')
    str = str:gsub('"', '\\"')
    str = str:gsub('\n', '\\n')
    str = str:gsub('\r', '\\r')
    str = str:gsub('\t', '\\t')
    return str
end
-- #endregion

-- #region Configuration
local geminiModels = {
    { name = "Gemini 2.5 Pro", id = "gemini-2.5-pro" },
    { name = "Gemini 2.5 Flash", id = "gemini-2.5-flash" }
}
local defaultGeminiModelId = "gemini-2.5-flash"

local prefs = service.getSharedPreferences("screen_assistant_settings", Context.MODE_PRIVATE)
local geminiApiKey = prefs.getString("geminiApiKey", "")
local loadedModelId = prefs.getString("geminiModelId", defaultGeminiModelId)
local isValidModel = false
for _, model in ipairs(geminiModels) do
    if model.id == loadedModelId then isValidModel = true; break end
end
local selectedGeminiModelId = isValidModel and loadedModelId or defaultGeminiModelId
local screenshotMode = prefs.getString("screenshotMode", "full")
-- #endregion

-- #region Global Variables
local recognizer = nil
local wm = service.getSystemService(Context.WINDOW_SERVICE)
local settingsDialog = nil
local isQueryInProgress = false
local tts = nil
local isTtsInitialized = false
-- #endregion

-- #region Helper Functions
local function getFeedbackString(key, ...)
    local args = {...}
    local ar_strings = {
        command_settings = "فتح الإعدادات.",
        command_processing = "جاري معالجة: %s...",
        error_speech_unavailable = "خدمة التعرف على الصوت غير متاحة.",
        error_gemini_api_test_success = "مفتاح API صالح مع موديل %s.",
        error_gemini_api_test_fail_empty = "مفتاح API فارغ.",
        error_gemini_api_test_fail_model = "لم يتم تحديد موديل للاختبار.",
        error_gemini_api_test_fail_response = "استجابة غير متوقعة (موديل %s).",
        error_gemini_api_test_fail_400 = "مفتاح API غير صالح (400) لموديل %s.",
        error_gemini_api_test_fail_403 = "مفتاح API غير مصرح به (403) لموديل %s.",
        error_gemini_api_test_fail_429 = "تم تجاوز حد الطلبات (429) لموديل %s.",
        error_gemini_api_test_fail_other = "فشل اختبار المفتاح لموديل %s. الحالة: %s.",
        settings_saved = "تم حفظ الإعدادات.",
        listening_start = "جاري الاستماع...",
        listening_speak_now = "...تحدث الآن",
        listening_processing = "🤔 جاري المعالجة...",
        listening_error = "خطأ استماع: %s",
        query_no_query_recognized = "لم يتم التعرف على استعلام.",
        query_no_query_heard = "لم أتمكن من سماع استعلامك.",
        query_already_running = "استعلام آخر قيد التنفيذ بالفعل.",
        api_key_missing = "يرجى إدخال مفتاح Gemini API في الإعدادات أولاً.",
        screenshot_failed = "فشل التقاط لقطة الشاشة."
    }
    local S = ar_strings[key] or ("Unknown key: " .. key)
    if S:match("%%s") and #args > 0 then
        return string.format(S, unpack(args))
    else
        return S
    end
end
-- #endregion

-- #region Text-to-Speech
local function initTextToSpeech(callback)
    if tts then
        pcall(function() tts.stop(); tts.shutdown() end)
        tts = nil
        isTtsInitialized = false
    end
    local listener = TextToSpeech.OnInitListener {
        onInit = function(status)
            if status == TextToSpeech.SUCCESS then
                isTtsInitialized = true
                local locale = Locale("ar")
                tts.setLanguage(locale)
            else
                isTtsInitialized = false
            end
            if callback then callback(isTtsInitialized) end
        end
    }
    local context = service
    pcall(function() tts = TextToSpeech(context, listener) end)
end

local function speak(text, mode)
    local queueMode = (mode == "add") and TextToSpeech.QUEUE_ADD or TextToSpeech.QUEUE_FLUSH
    if not isTtsInitialized or not tts then
        service.asyncSpeak(text)
        return
    end
    pcall(function() tts.speak(text, queueMode, nil, nil) end)
end
-- #endregion

-- #region Core Logic
local function queryImageWithGemini(base64Image, userQuery, onChunk, onComplete, onError)
    if geminiApiKey == "" then onError(getFeedbackString("api_key_missing")); return end
    if not base64Image then onError("خطأ: بيانات الصورة غير متوفرة للاستعلام."); return end
    if not userQuery or userQuery == "" then onError("خطأ: لم يتم تقديم أي استعلام."); return end

    local Thread = require "java.lang.Thread"
    local Runnable = require "java.lang.Runnable"
    local URL = require "java.net.URL"
    local BufferedReader = require "java.io.BufferedReader"
    local InputStreamReader = require "java.io.InputStreamReader"

    local prompt = "أجب على السؤال التالي بناءً على الصورة المرفقة. كن دقيقًا وموجزًا. السؤال هو: " .. userQuery
    local modelToUse = selectedGeminiModelId or defaultGeminiModelId
    local urlString = "https://generativelanguage.googleapis.com/v1beta/models/" .. modelToUse .. ":streamGenerateContent?key=" .. geminiApiKey
    local requestBody = [[{ "contents": [{ "parts": [ {"text": "]] .. escapeJsonString(prompt) .. [["}, { "inline_data": { "mime_type": "image/png", "data": "]] .. base64Image .. [[" } } ] }] }]]

    local networkRunnable = Runnable {
        run = function()
            local conn = nil
            local pcall_success, pcall_result = pcall(function()
                local url = URL(urlString)
                conn = url.openConnection()
                conn.setRequestMethod("POST")
                conn.setRequestProperty("Content-Type", "application/json")
                conn.setDoOutput(true)

                local os = conn.getOutputStream()
                os.write(requestBody:getBytes("UTF-8"))
                os.close()

                local status = conn.getResponseCode()
                if status == 200 then
                    local is = conn.getInputStream()
                    local reader = BufferedReader(InputStreamReader(is))
                    local line
                    while true do
                        line = reader.readLine()
                        if line == nil then break end
                        local cleanedLine = line:gsub("^%s*%[?%s*,?%s*", ""):gsub("%s*,?%s*]?%s*$", "")
                        if cleanedLine ~= "" then
                            service.post(function()
                                local s, jR = pcall(function() return JSONObject(cleanedLine) end)
                                if s and jR and jR.has("candidates") then
                                    local candidates = jR.getJSONArray("candidates")
                                    if candidates.length() > 0 then
                                        local candidate = candidates.getJSONObject(0)
                                        if candidate.has("content") and candidate.getJSONObject("content").has("parts") then
                                            local parts = candidate.getJSONObject("content").getJSONArray("parts")
                                            if parts.length() > 0 and parts.getJSONObject(0).has("text") then
                                                local textChunk = parts.getJSONObject(0).getString("text")
                                                onChunk(textChunk)
                                            end
                                        end
                                    end
                                end
                            end)
                        end
                    end
                    reader.close()
                    service.post(onComplete)
                else
                    service.post(function() onError("خطأ: فشل طلب Gemini (الحالة: " .. status .. ")") end)
                end
            end)
            if not pcall_success then
                service.post(function() onError("خطأ في الاتصال: " .. tostring(pcall_result)) end)
            end
            if conn then
                conn.disconnect()
            end
        end
    }
    local networkThread = Thread(networkRunnable)
    networkThread.start()
end

local function takeScreenshotAndEncode(callback)
    local function processBitmap(bmp)
        if bmp then
            local success, result = pcall(function()
                local baos = ByteArrayOutputStream()
                bmp.compress(Bitmap.CompressFormat.PNG, 90, baos)
                local bytes = baos.toByteArray()
                baos.close()
                pcall(bmp.recycle, bmp)
                return Base64.encodeToString(bytes, Base64.NO_WRAP)
            end)
            if success then
                callback(result)
            else
                if bmp and not bmp.isRecycled() then pcall(bmp.recycle, bmp) end
                callback(nil)
            end
        else
            callback(nil)
        end
    end

    local options = { onScreenCaptureDone = processBitmap }
    if screenshotMode == "focus" then
        local focusedNode = service.getFocusView()
        if focusedNode then
            pcall(function() service.getScreenShot(focusedNode, options) end)
            pcall(focusedNode.recycle, focusedNode)
        else
            pcall(function() service.getScreenShot(options) end)
        end
    else
        pcall(function() service.getScreenShot(options) end)
    end
end
-- #endregion

-- #region Voice Recognition
startVoiceRecognition = function()
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil; collectgarbage("collect") end
    if not SpeechRecognizer.isRecognitionAvailable(service) then
        speak(getFeedbackString("error_speech_unavailable")); return
    end

    recognizer = SpeechRecognizer.createSpeechRecognizer(service)
    local intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, "ar");
    intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false);
    intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)

    local startListening

    local listener = RecognitionListener {
        onReadyForSpeech = function() speak(getFeedbackString("listening_speak_now")) end,
        onBeginningOfSpeech = function() end,
        onRmsChanged = function() end,
        onBufferReceived = function() end,
        onEndOfSpeech = function() end,
        onError = function()
            if recognizer then
                pcall(function() recognizer.destroy() end)
                recognizer = nil
            end
        end,
        onResults = function(results)
            local matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if matches and matches.size() > 0 then
                local recognizedText = matches.get(0)

                if recognizedText == "الضبط" or recognizedText == "ضبط" or recognizedText == "الإعدادات" then
                    openSettings()
                    return
                end

                if not isQueryInProgress then
                    isQueryInProgress = true
                    speak(getFeedbackString("command_processing", recognizedText), "flush")
                    takeScreenshotAndEncode(function(encodedImage)
                        if encodedImage then
                            local sentenceBuffer = ""
                            local firstSentenceSpoken = false
                            local onChunk = function(textChunk)
                                sentenceBuffer = sentenceBuffer .. textChunk
                                while sentenceBuffer:match("[%.!%?]") do
                                    local sentence, remaining = sentenceBuffer:match("([^%.!%?]+[%.!%?])(.*)")
                                    if sentence then
                                        if not firstSentenceSpoken then
                                            speak(sentence, "flush")
                                            firstSentenceSpoken = true
                                        else
                                            speak(sentence, "add")
                                        end
                                        sentenceBuffer = remaining
                                    else
                                        speak(sentenceBuffer, "add")
                                        sentenceBuffer = ""
                                    end
                                end
                            end
                            local onComplete = function()
                                if sentenceBuffer ~= "" then
                                    speak(sentenceBuffer, "add")
                                end
                                Thread.sleep(3000)
                                pcall(function() service.stopSelf() end)
                            end
                            local onError = function(errorMessage)
                                speak(errorMessage, "flush")
                                isQueryInProgress = false
                                pcall(function() service.stopSelf() end)
                            end

                            queryImageWithGemini(encodedImage, recognizedText, onChunk, onComplete, onError)
                        else
                            speak(getFeedbackString("screenshot_failed"), "flush")
                            isQueryInProgress = false
                            pcall(function() service.stopSelf() end)
                        end
                    end)
                else
                    speak(getFeedbackString("query_already_running"), "flush")
                    pcall(function() service.stopSelf() end)
                end
            else
                pcall(function() service.stopSelf() end)
            end
        end,
        onPartialResults = function() end,
        onEvent = function() end
    }

    startListening = function()
        if recognizer then
            pcall(function() recognizer.startListening(intent) end)
        end
    end

    recognizer.setRecognitionListener(listener)
    speak(getFeedbackString("listening_start"))
    startListening()
end
-- #endregion

-- #region Settings UI

local function saveSettings()
    local editor = prefs.edit()
    editor.putString("geminiApiKey", geminiApiKey or "")
    editor.putString("geminiModelId", selectedGeminiModelId or defaultGeminiModelId)
    editor.putString("screenshotMode", screenshotMode or "full")
    editor.apply()
    speak(getFeedbackString("settings_saved"))
    hideSettings()
end

hideSettings = function()
    if settingsDialog then
        pcall(function() wm.removeView(settingsDialog) end)
        settingsDialog = nil
    end
    startVoiceRecognition()
end

local function testGeminiApiKey(key, modelId, callback)
    if not key or key == "" then callback(false, getFeedbackString("error_gemini_api_test_fail_empty")); return end
    if not modelId or modelId == "" then callback(false, getFeedbackString("error_gemini_api_test_fail_model")); return end

    speak(getFeedbackString("command_processing", "API test"))
    local url = "https://generativelanguage.googleapis.com/v1beta/models/"..modelId..":generateContent?key="..key
    local requestBody = [[{ "contents": [{ "parts": [ {"text": "Hello"} ] }] }]]
    local headers = {["Content-Type"]="application/json"}
    Http.post(url, requestBody, headers, function(status)
        local msg
        if status == 200 then
            msg = getFeedbackString("error_gemini_api_test_success", modelId)
            callback(true, msg)
        elseif status == 400 then
            msg = getFeedbackString("error_gemini_api_test_fail_400", modelId)
            callback(false, msg)
        else
            msg = getFeedbackString("error_gemini_api_test_fail_other", modelId, status)
            callback(false, msg)
        end
    end)
end


openSettings = function()
    if settingsDialog then return end
    if recognizer then pcall(function() recognizer.cancel() end) end

    settingsDialog = LinearLayout(service)
    settingsDialog.setOrientation(LinearLayout.VERTICAL)
    settingsDialog.setBackgroundColor(0xFFFFFFFF)
    settingsDialog.setPadding(30, 30, 30, 30)
    settingsDialog.setContentDescription("صفحة الإعدادات")

    local scrollV = ScrollView(service)
    local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL)

    local titleTxt = TextView(service)
    titleTxt.setText("الإعدادات")
    titleTxt.setTextSize(24)
    titleTxt.setTypeface(nil, Typeface.BOLD)
    titleTxt.setTextColor(0xFF000000)
    titleTxt.setGravity(Gravity.CENTER_HORIZONTAL)
    titleTxt.setPadding(0, 0, 0, 30)
    contentL.addView(titleTxt)

    local apiKeyLbl = TextView(service)
    apiKeyLbl.setText("مفتاح Gemini API:")
    apiKeyLbl.setTextColor(0xFF000000)
    contentL.addView(apiKeyLbl)
    local apiKeyIn = EditText(service)
    apiKeyIn.setText(geminiApiKey or "")
    apiKeyIn.setHint("أدخل المفتاح هنا")
    apiKeyIn.addTextChangedListener{onTextChanged=function(s) geminiApiKey = s and s.toString() or "" end}
    contentL.addView(apiKeyIn)

    local modelLbl = TextView(service)
    modelLbl.setText("نموذج Gemini:")
    modelLbl.setTextColor(0xFF000000)
    modelLbl.setPadding(0, 20, 0, 5)
    contentL.addView(modelLbl)
    local modelNames = ArrayList()
    local modelIds = {}
    for _, model in ipairs(geminiModels) do
        modelNames.add(model.name)
        table.insert(modelIds, model.id)
    end
    local modelAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, modelNames)
    modelAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local modelSpinner = Spinner(service)
    modelSpinner.setAdapter(modelAdapter)
    modelSpinner.setContentDescription("اختر نموذج Gemini")
    local currentModelIndex = -1
    for i, id in ipairs(modelIds) do if id == selectedGeminiModelId then currentModelIndex = i - 1; break end end
    if currentModelIndex ~= -1 then modelSpinner.setSelection(currentModelIndex) end
    modelSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener {
        onItemSelected = function(_, _, position, _) selectedGeminiModelId = modelIds[position + 1] end,
        onNothingSelected = function() end
    })
    contentL.addView(modelSpinner)

    local testApiBtn = Button(service)
    testApiBtn.setText("اختبار المفتاح والنموذج")
    testApiBtn.setOnClickListener(function()
        testGeminiApiKey(geminiApiKey, selectedGeminiModelId, function(_, msg) speak(msg) end)
    end)
    contentL.addView(testApiBtn)

    local screenshotLbl = TextView(service)
    screenshotLbl.setText("وضع لقطة الشاشة:")
    screenshotLbl.setTextColor(0xFF000000)
    screenshotLbl.setPadding(0, 20, 0, 5)
    contentL.addView(screenshotLbl)
    local screenshotGroup = RadioGroup(service)
    screenshotGroup.setOrientation(LinearLayout.VERTICAL)
    local fullRb = RadioButton(service); fullRb.setText("ملء الشاشة"); fullRb.setId(View.generateViewId())
    fullRb.setContentDescription("اختيار وضع ملء الشاشة")
    local focusRb = RadioButton(service); focusRb.setText("العنصر المحدد"); focusRb.setId(View.generateViewId())
    focusRb.setContentDescription("اختيار وضع العنصر المحدد")
    screenshotGroup.addView(fullRb); screenshotGroup.addView(focusRb)
    if screenshotMode == "focus" then screenshotGroup.check(focusRb.getId()) else screenshotGroup.check(fullRb.getId()) end
    screenshotGroup.setOnCheckedChangeListener(function(_, checkedId)
        if checkedId == focusRb.getId() then screenshotMode = "focus" else screenshotMode = "full" end
    end)
    contentL.addView(screenshotGroup)

    local btnLayout = LinearLayout(service)
    btnLayout.setOrientation(LinearLayout.HORIZONTAL)
    btnLayout.setGravity(Gravity.CENTER)
    btnLayout.setPadding(0, 40, 0, 0)

    local saveBtn = Button(service)
    saveBtn.setText("حفظ")
    saveBtn.setOnClickListener(saveSettings)
    btnLayout.addView(saveBtn)

    local closeBtn = Button(service)
    closeBtn.setText("إغلاق")
    closeBtn.setOnClickListener(hideSettings)
    local lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    lp.setMargins(20, 0, 0, 0)
    btnLayout.addView(closeBtn, lp)

    contentL.addView(btnLayout)

    scrollV.addView(contentL)
    settingsDialog.addView(scrollV)

    local params = WindowManager.LayoutParams()
    params.width = WindowManager.LayoutParams.MATCH_PARENT
    params.height = WindowManager.LayoutParams.MATCH_PARENT
    params.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
    params.flags = WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
    params.format = PixelFormat.TRANSLUCENT
    pcall(function() wm.addView(settingsDialog, params) end)
    settingsDialog.requestFocus()
end
-- #endregion

-- #region Service Lifecycle
onDestroy = function()
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil end
    if settingsDialog then pcall(function() wm.removeView(settingsDialog) end); settingsDialog = nil end
    if tts then pcall(function() tts.stop(); tts.shutdown() end); tts = nil end
end

-- Initialize the script
initTextToSpeech(function(success)
    if success then
        startVoiceRecognition()
    else
        service.asyncSpeak("فشل تهيئة محرك النطق. يرجى التحقق من إعدادات TTS في جهازك.")
    end
end)
-- #endregion
