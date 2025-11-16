-- Interactive Screen Assistant Script
-- Version: 1.0.0
-- Description: An interactive assistant that analyzes the screen and answers user questions.

-- Required libraries
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
import "org.json.JSONObject"
import "android.view.Gravity"
import "android.view.accessibility.AccessibilityNodeInfo"
import "java.io.File"
import "android.util.Base64"
import "android.graphics.Bitmap"
import "java.io.ByteArrayOutputStream"
import "android.widget.RadioGroup"
import "android.widget.RadioButton"
import "android.widget.ScrollView"
import "android.graphics.Typeface"
import "android.view.MotionEvent"
import "android.provider.Settings"
import "android.widget.ArrayAdapter"
import "android.widget.Spinner"
import "java.util.ArrayList"
import "android.R"
import "android.widget.AdapterView"
import "android.speech.tts.TextToSpeech"
import "java.util.Locale"

-- ### Global Variables ###
local recognizer = nil
local tts = nil
local isTtsInitialized = false
local wm = service.getSystemService(Context.WINDOW_SERVICE)
local settingsDialog = nil

-- Gemini Models
local geminiModels = {
    { name = "Gemini 2.5 Pro", id = "gemini-2.5-pro" },
    { name = "Gemini 2.5 Flash", id = "gemini-2.5-flash" },
    { name = "Gemini 2.5 Flash-Lite", id = "gemini-2.5-flash-lite" },
    { name = "Gemini 2.0 Flash", id = "gemini-2.0-flash" },
    { name = "Gemini 2.0 Flash-Lite", id = "gemini-2.0-flash-lite" }
}
local defaultGeminiModelId = "gemini-2.5-flash"

-- Settings with default values
local prefs = service.getSharedPreferences("interactive_assistant_settings", Context.MODE_PRIVATE)
local geminiApiKey = prefs.getString("geminiApiKey", "")
local screenshotMode = prefs.getString("screenshotMode", "full") -- "full" or "focus"
local selectedGeminiModelId = prefs.getString("geminiModelId", defaultGeminiModelId)

-- Conversation Context
local lastScreenshotBase64 = nil
local conversationHistory = ""

-- ### Text-to-Speech (TTS) Functions ###
function initTextToSpeech(callback)
    if tts then pcall(function() tts.stop(); tts.shutdown() end); tts = nil end
    local listener = TextToSpeech.OnInitListener {
        onInit = function(status)
            if status == TextToSpeech.SUCCESS then
                isTtsInitialized = true; local arabicLocale = Locale("ar")
                local langResult = tts.setLanguage(arabicLocale)
                if langResult == TextToSpeech.LANG_MISSING_DATA or langResult == TextToSpeech.LANG_NOT_SUPPORTED then tts.setLanguage(Locale.getDefault()) end
                if callback then callback(true) end
            else
                isTtsInitialized = false; if callback then callback(false) end
            end
        end
    }
    tts = TextToSpeech(service, listener)
end

function speak(text)
  if tts and isTtsInitialized then pcall(function() tts.speak(text, TextToSpeech.QUEUE_FLUSH, nil, nil) end)
  else service.showToast(text) end
end

-- ### Helper Functions ###
function escapeJsonString(str)
    if not str then return "" end
    return str:gsub('\\', '\\\\'):gsub('"', '\\"'):gsub('\n', '\\n'):gsub('\r', '\\r'):gsub('\t', '\\t')
end

-- ### Settings UI ###
function hideSettings()
    if settingsDialog then pcall(function() wm.removeView(settingsDialog) end); settingsDialog = nil end
    startVoiceRecognition() -- Resume listening after settings are closed
end

function saveSettings(apiKey, modelId, screenMode)
    geminiApiKey = apiKey; selectedGeminiModelId = modelId; screenshotMode = screenMode
    local editor = prefs.edit()
    editor.putString("geminiApiKey", geminiApiKey)
    editor.putString("geminiModelId", selectedGeminiModelId)
    editor.putString("screenshotMode", screenshotMode)
    editor.apply()
    speak("تم حفظ الإعدادات.")
    hideSettings()
end

function testGeminiApiKey(key, modelIdToTest)
    if not key or key == "" then speak("مفتاح API فارغ."); return end
    if not modelIdToTest or modelIdToTest == "" then speak("لم يتم تحديد موديل للاختبار."); return end

    speak("جاري اختبار المفتاح مع موديل " .. modelIdToTest)
    local url = "https://generativelanguage.googleapis.com/v1beta/models/"..modelIdToTest..":generateContent?key="..key
    local requestBody = [[{"contents":[{"parts":[{"text":"hello"}]}]}]]
    local headers = {["Content-Type"]="application/json"}
    Http.post(url, requestBody, headers, function(status, response)
        if status == 200 then speak("المفتاح صالح ويعمل بنجاح.")
        elseif status == 400 then speak("خطأ: مفتاح API غير صالح.")
        else speak("فشل الاختبار. رمز الحالة: " .. status) end
    end)
end

function openSettings()
    if settingsDialog then return end
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil end -- Stop listening

    settingsDialog = LinearLayout(service); settingsDialog.setOrientation(LinearLayout.VERTICAL)
    settingsDialog.setBackgroundColor(0xFFFFFFFF); settingsDialog.setPadding(30,30,30,30)

    local scrollV = ScrollView(service); local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL); contentL.setPadding(10,10,10,10)

    local titleTxt = TextView(service); titleTxt.setText("إعدادات مساعد الشاشة"); titleTxt.setTextSize(22)
    titleTxt.setTypeface(nil, Typeface.BOLD); titleTxt.setTextColor(0xFF000000)
    titleTxt.setGravity(Gravity.CENTER_HORIZONTAL); titleTxt.setPadding(0,0,0,30)
    contentL.addView(titleTxt)

    -- API Key
    local apiKeyLbl = TextView(service); apiKeyLbl.setText("مفتاح Gemini API:"); apiKeyLbl.setTextColor(0xFF000000)
    contentL.addView(apiKeyLbl)
    local apiKeyIn = EditText(service); apiKeyIn.setText(geminiApiKey or "")
    apiKeyIn.setHint("أدخل المفتاح هنا"); apiKeyIn.setSingleLine(true); apiKeyIn.setTextSize(14)
    contentL.addView(apiKeyIn)

    -- Gemini Model
    local modelSelLbl = TextView(service); modelSelLbl.setText("اختر موديل Gemini:"); modelSelLbl.setTextColor(0xFF000000)
    modelSelLbl.setPadding(0, 20, 0, 5); contentL.addView(modelSelLbl)
    local geminiModelNames = ArrayList(); local geminiModelIds = {}
    for _, model in ipairs(geminiModels) do geminiModelNames.add(model.name); table.insert(geminiModelIds, model.id) end
    local modelAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, geminiModelNames)
    modelAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local geminiModelSpinner = Spinner(service); geminiModelSpinner.setAdapter(modelAdapter)
    local currentModelIndex = -1
    for i, id_val in ipairs(geminiModelIds) do if id_val == selectedGeminiModelId then currentModelIndex = i - 1; break end end
    if currentModelIndex ~= -1 then geminiModelSpinner.setSelection(currentModelIndex) else geminiModelSpinner.setSelection(1) end -- Default to flash
    contentL.addView(geminiModelSpinner)

    -- Test Button
    local testApiBtn = Button(service); testApiBtn.setText("اختبار المفتاح والموديل")
    testApiBtn.setOnClickListener(function()
        local key = apiKeyIn.getText().toString()
        local selectedPos = geminiModelSpinner.getSelectedItemPosition()
        local modelId = geminiModelIds[selectedPos + 1]
        testGeminiApiKey(key, modelId)
    end)
    local tbp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    tbp.gravity = Gravity.CENTER_HORIZONTAL; tbp.topMargin = 15; tbp.bottomMargin=20
    contentL.addView(testApiBtn, tbp)

    -- Screenshot Mode
    local scrModeLbl = TextView(service); scrModeLbl.setText("وضع لقطة الشاشة:"); scrModeLbl.setTextColor(0xFF000000)
    contentL.addView(scrModeLbl)
    local scrModeGrp = RadioGroup(service); scrModeGrp.setOrientation(LinearLayout.VERTICAL)
    local rFull = RadioButton(service); rFull.setText("شاشة كاملة"); rFull.setId(View.generateViewId()); scrModeGrp.addView(rFull)
    local rFoc = RadioButton(service); rFoc.setText("العنصر المحدد"); rFoc.setId(View.generateViewId()); scrModeGrp.addView(rFoc)
    if screenshotMode == "focus" then scrModeGrp.check(rFoc.getId()) else scrModeGrp.check(rFull.getId()) end
    contentL.addView(scrModeGrp)

    -- Buttons
    local btnL = LinearLayout(service); btnL.setOrientation(LinearLayout.HORIZONTAL)
    btnL.setGravity(Gravity.CENTER); btnL.setPadding(0,40,0,10)
    local saveBtn = Button(service); saveBtn.setText("حفظ وإغلاق")
    saveBtn.setOnClickListener(function()
        local key = apiKeyIn.getText().toString()
        local modelId = geminiModelIds[geminiModelSpinner.getSelectedItemPosition() + 1]
        local screenM = "full"; if scrModeGrp.getCheckedRadioButtonId() == rFoc.getId() then screenM = "focus" end
        saveSettings(key, modelId, screenM)
    end)
    btnL.addView(saveBtn)
    local closeBtn = Button(service); closeBtn.setText("إلغاء")
    closeBtn.setOnClickListener(hideSettings)
    local lp = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    lp.setMargins(20,0,0,0); btnL.addView(closeBtn, lp)
    contentL.addView(btnL)

    scrollV.addView(contentL); settingsDialog.addView(scrollV)
    local p=WindowManager.LayoutParams(); p.width=WindowManager.LayoutParams.MATCH_PARENT; p.height=WindowManager.LayoutParams.WRAP_CONTENT
    p.type=WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY; p.flags=WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN|WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM|WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH
    p.format=PixelFormat.TRANSLUCENT; p.gravity=Gravity.CENTER
    pcall(function() wm.addView(settingsDialog,p) end)
end


-- ### Screenshot and Analysis Functions ###
function takeScreenshotAndEncode(callback)
    local function processBitmap(bmp)
        if bmp then
            local success, result = pcall(function()
                local baos = ByteArrayOutputStream(); bmp.compress(Bitmap.CompressFormat.PNG, 90, baos)
                local imageBytes = baos.toByteArray(); baos.close(); pcall(bmp.recycle, bmp)
                return Base64.encodeToString(imageBytes, Base64.NO_WRAP)
            end)
            if success then callback(result) else if bmp and not bmp.isRecycled() then pcall(bmp.recycle, bmp) end; callback(nil) end
        else callback(nil) end
    end

    if screenshotMode == "focus" then
        local focusedNode = service.getFocusView()
        if focusedNode then pcall(function() service.getScreenShot(focusedNode, { onScreenCaptureDone = processBitmap }) end); pcall(focusedNode.recycle, focusedNode)
        else pcall(function() service.getScreenShot({ onScreenCaptureDone = processBitmap }) end) end
    else pcall(function() service.getScreenShot({ onScreenCaptureDone = processBitmap }) end) end
end

function queryImageWithGemini(base64Image, userQuery, history, callback)
    if geminiApiKey == "" then callback("خطأ: مفتاح Gemini API غير مُعدّ. يرجى إضافته في الإعدادات."); return end
    if not base64Image then callback("خطأ: لا توجد صورة متاحة للتحليل."); return end

    local prompt
    if history and history ~= "" then
        prompt = "This is the conversation history about the image:\n" .. history ..
                 "\nBased on the image and history, answer the current question. Keep the answer in Arabic.\nCurrent Question: " .. userQuery
    else
        prompt = "You are an expert screen assistant. Analyze the image and answer the user's question about it. Your entire response must be in Arabic.\n\nUser Question: " .. userQuery
    end

    local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
    local requestBody = [[{"contents": [{"parts": [{"text": "]] .. escapeJsonString(prompt) .. [["},{"inline_data": { "mime_type": "image/png", "data": "]] .. base64Image .. [[" }}]}]}]]
    local headers = {["Content-Type"] = "application/json"}

    Http.post(url, requestBody, headers, function(status, response)
        if status == 200 then
            local success, jR = pcall(function() return JSONObject(response) end)
            if success and jR and jR.has("candidates") and jR.getJSONArray("candidates").length() > 0 then
                callback(jR.getJSONArray("candidates").getJSONObject(0).getJSONObject("content").getJSONArray("parts").getJSONObject(0).getString("text")); return
            end
            callback("خطأ: لم أتمكن من تحليل الرد من Gemini.")
        else callback("خطأ في الاتصال بـ Gemini. الحالة: " .. status) end
    end)
end


-- ### Speech Recognition ###
function startVoiceRecognition()
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil end
    if not SpeechRecognizer.isRecognitionAvailable(service) then speak("خدمة التعرف على الصوت غير متاحة."); return end

    recognizer = SpeechRecognizer.createSpeechRecognizer(service)
    local intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, "ar"); intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)

    local listener = RecognitionListener {
        onReadyForSpeech = function() speak("...أستمع") end, onBeginningOfSpeech = function() end, onRmsChanged = function() end, onBufferReceived = function() end, onEndOfSpeech = function() end,
        onError = function(error)
            if error ~= SpeechRecognizer.ERROR_CLIENT and error ~= SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS then pcall(function() recognizer.startListening(intent) end)
            else speak("حدث خطأ في التعرف على الصوت.") end
        end,
        onResults = function(results)
            local matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if matches and matches.size() > 0 then
                local userQuery = matches.get(0); local lowerUserQuery = userQuery:lower()
                local resetKeywords = {"حلل الشاشة", "صورة جديدة", "ابدا من جديد", "حلل الشاشه"}
                local shouldReset = false
                for _, keyword in ipairs(resetKeywords) do if userQuery == keyword then shouldReset = true; break end end

                if lowerUserQuery == "الضبط" then openSettings()
                elseif shouldReset or not lastScreenshotBase64 then
                    speak("تمام، جاري تحليل الشاشة الحالية...")
                    conversationHistory = ""
                    takeScreenshotAndEncode(function(base64Image)
                        if base64Image then
                            lastScreenshotBase64 = base64Image; local firstQuery = "صف لي هذه الشاشة بالتفصيل"
                            if shouldReset then
                               queryImageWithGemini(lastScreenshotBase64, firstQuery, "", function(answer)
                                  speak(answer); conversationHistory = "Assistant: " .. answer; pcall(function() recognizer.startListening(intent) end)
                               end)
                            else
                               queryImageWithGemini(lastScreenshotBase64, userQuery, "", function(answer)
                                  speak(answer); conversationHistory = "User: " .. userQuery .. "\nAssistant: " .. answer; pcall(function() recognizer.startListening(intent) end)
                               end)
                            end
                        else
                            speak("عذراً، لم أتمكن من التقاط الشاشة."); lastScreenshotBase64 = nil
                            pcall(function() recognizer.startListening(intent) end)
                        end
                    end)
                else
                    speak("تمام، بالنسبة للصورة الحالية...")
                    queryImageWithGemini(lastScreenshotBase64, userQuery, conversationHistory, function(answer)
                        speak(answer); conversationHistory = conversationHistory .. "\nUser: " .. userQuery .. "\nAssistant: " .. answer
                        pcall(function() recognizer.startListening(intent) end)
                    end)
                end
            else pcall(function() recognizer.startListening(intent) end) end
        end,
        onPartialResults = function() end, onEvent = function() end
    }
    recognizer.setRecognitionListener(listener)
    pcall(function() recognizer.startListening(intent) end)
end

-- ### Service Lifecycle ###
function onDestroy()
    if recognizer then pcall(function() recognizer.destroy() end); recognizer = nil end
    if tts then pcall(function() tts.stop(); tts.shutdown() end); tts = nil end
    if settingsDialog then pcall(function() wm.removeView(settingsDialog) end); settingsDialog = nil end
end

-- ### Entry Point ###
initTextToSpeech(function(success)
    if success then
        speak("مساعد الشاشة التفاعلي جاهز.")
        startVoiceRecognition()
    else
        service.showToast("فشل تهيئة محرك النطق.")
        startVoiceRecognition()
    end
end)
