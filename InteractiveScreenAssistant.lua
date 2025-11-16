-- Interactive Screen Assistant Script
-- Version: 2.2.0 (Bugfix Release)
-- Description: A robust, state-managed interactive assistant that analyzes the screen and answers
-- user questions, activated by running the script for each query.

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

-- =============================================================================
-- SECTION 1: STATE, SETTINGS, AND FORWARD DECLARATIONS
-- =============================================================================

if not _G.assistantState then
    _G.assistantState = {
        isFirstRun = true, recognizer = nil, tts = nil, isTtsInitialized = false,
        wm = service.getSystemService(Context.WINDOW_SERVICE),
        settingsDialog = nil, floatingButton = nil, floatingMenu = nil,
        lastScreenshotBase64 = nil, conversationHistory = ""
    }
end

local geminiModels = {
    { name = "Gemini 2.5 Pro", id = "gemini-2.5-pro" },
    { name = "Gemini 2.5 Flash", id = "gemini-2.5-flash" },
    { name = "Gemini 2.5 Flash-Lite", id = "gemini-2.5-flash-lite" }
}
local defaultGeminiModelId = "gemini-2.5-flash"

local prefs = service.getSharedPreferences("interactive_assistant_settings", Context.MODE_PRIVATE)
local geminiApiKey = prefs.getString("geminiApiKey", "")
local screenshotMode = prefs.getString("screenshotMode", "full")
local selectedGeminiModelId = prefs.getString("geminiModelId", defaultGeminiModelId)

-- Forward declarations to handle asynchronous callbacks and function order
local startVoiceRecognition
local openSettings
local showFloatingMenu
local createFloatingButton
local initTextToSpeech

-- =============================================================================
-- SECTION 2: ALL FUNCTION DEFINITIONS
-- =============================================================================

function speak(text)
  if not _G.assistantState or not _G.assistantState.tts or not _G.assistantState.isTtsInitialized then
      service.showToast("محرك النطق غير جاهز: " .. text)
      return
  end
  pcall(function() _G.assistantState.tts.speak(text, TextToSpeech.QUEUE_FLUSH, nil, nil) end)
end

function escapeJsonString(str)
    if not str then return "" end
    return str:gsub('\\', '\\\\'):gsub('"', '\\"'):gsub('\n', '\\n'):gsub('\r', '\\r'):gsub('\t', '\\t')
end

function cleanupService()
    if not _G.assistantState then return end
    speak("جاري إغلاق المساعد.")
    if _G.assistantState.recognizer then pcall(_G.assistantState.recognizer.destroy, _G.assistantState.recognizer) end
    if _G.assistantState.settingsDialog then pcall(_G.assistantState.wm.removeView, _G.assistantState.wm, _G.assistantState.settingsDialog) end
    if _G.assistantState.floatingButton then pcall(_G.assistantState.wm.removeView, _G.assistantState.wm, _G.assistantState.floatingButton) end
    if _G.assistantState.floatingMenu then pcall(_G.assistantState.wm.removeView, _G.assistantState.wm, _G.assistantState.floatingMenu) end
    if _G.assistantState.tts then pcall(function() _G.assistantState.tts.stop(); _G.assistantState.tts.shutdown() end) end
    _G.assistantState = nil
    pcall(service.stopSelf)
end

function onDestroy()
    if _G.assistantState then cleanupService() end
end

function hideSettings()
    if _G.assistantState and _G.assistantState.settingsDialog then
        pcall(_G.assistantState.wm.removeView, _G.assistantState.wm, _G.assistantState.settingsDialog)
        _G.assistantState.settingsDialog = nil
    end
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
    if not _G.assistantState or _G.assistantState.settingsDialog then return end
    if _G.assistantState.recognizer then pcall(_G.assistantState.recognizer.destroy, _G.assistantState.recognizer); _G.assistantState.recognizer = nil end
    if _G.assistantState.floatingMenu then showFloatingMenu() end

    _G.assistantState.settingsDialog = LinearLayout(service); _G.assistantState.settingsDialog.setOrientation(LinearLayout.VERTICAL)
    _G.assistantState.settingsDialog.setBackgroundColor(0xFFF0F0F0); _G.assistantState.settingsDialog.setPadding(30,30,30,30)
    local scrollV = ScrollView(service); local contentL = LinearLayout(service)
    contentL.setOrientation(LinearLayout.VERTICAL); contentL.setPadding(10,10,10,10)
    local titleTxt = TextView(service); titleTxt.setText("إعدادات مساعد الشاشة"); titleTxt.setTextSize(22); titleTxt.setTypeface(nil, Typeface.BOLD); titleTxt.setTextColor(0xFF000000); titleTxt.setGravity(Gravity.CENTER_HORIZONTAL); titleTxt.setPadding(0,0,0,30); contentL.addView(titleTxt)
    local apiKeyLbl = TextView(service); apiKeyLbl.setText("مفتاح Gemini API:"); apiKeyLbl.setTextColor(0xFF000000); contentL.addView(apiKeyLbl)
    local apiKeyIn = EditText(service); apiKeyIn.setText(geminiApiKey or ""); apiKeyIn.setHint("أدخل المفتاح هنا"); apiKeyIn.setSingleLine(true); apiKeyIn.setTextSize(14); contentL.addView(apiKeyIn)
    local modelSelLbl = TextView(service); modelSelLbl.setText("اختر موديل Gemini:"); modelSelLbl.setTextColor(0xFF000000); modelSelLbl.setPadding(0, 20, 0, 5); contentL.addView(modelSelLbl)
    local geminiModelNames = ArrayList(); local geminiModelIds = {}
    for _, model in ipairs(geminiModels) do geminiModelNames.add(model.name); table.insert(geminiModelIds, model.id) end
    local modelAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, geminiModelNames); modelAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
    local geminiModelSpinner = Spinner(service); geminiModelSpinner.setAdapter(modelAdapter)
    local currentModelIndex = 0; for i, id_val in ipairs(geminiModelIds) do if id_val == selectedGeminiModelId then currentModelIndex = i - 1; break end end
    geminiModelSpinner.setSelection(currentModelIndex >= 0 and currentModelIndex or 1); contentL.addView(geminiModelSpinner)
    local testApiBtn = Button(service); testApiBtn.setText("اختبار المفتاح والموديل")
    testApiBtn.setOnClickListener(function() testGeminiApiKey(apiKeyIn.getText().toString(), geminiModelIds[geminiModelSpinner.getSelectedItemPosition() + 1]) end)
    local tbp = LinearLayout.LayoutParams(-2,-2); tbp.gravity = Gravity.CENTER_HORIZONTAL; tbp.topMargin = 15; tbp.bottomMargin=20; contentL.addView(testApiBtn, tbp)
    local scrModeLbl = TextView(service); scrModeLbl.setText("وضع لقطة الشاشة:"); scrModeLbl.setTextColor(0xFF000000); contentL.addView(scrModeLbl)
    local scrModeGrp = RadioGroup(service); scrModeGrp.setOrientation(LinearLayout.VERTICAL)
    local rFull = RadioButton(service); rFull.setText("شاشة كاملة"); rFull.setId(View.generateViewId()); scrModeGrp.addView(rFull)
    local rFoc = RadioButton(service); rFoc.setText("العنصر المحدد"); rFoc.setId(View.generateViewId()); scrModeGrp.addView(rFoc)
    if screenshotMode == "focus" then scrModeGrp.check(rFoc.getId()) else scrModeGrp.check(rFull.getId()) end
    contentL.addView(scrModeGrp)
    local btnL = LinearLayout(service); btnL.setOrientation(LinearLayout.HORIZONTAL); btnL.setGravity(Gravity.CENTER); btnL.setPadding(0,40,0,10)
    local saveBtn = Button(service); saveBtn.setText("حفظ"); saveBtn.setOnClickListener(function() saveSettings(apiKeyIn.getText().toString(), geminiModelIds[geminiModelSpinner.getSelectedItemPosition() + 1], scrModeGrp.getCheckedRadioButtonId() == rFoc.getId() and "focus" or "full") end); btnL.addView(saveBtn)
    local closeBtn = Button(service); closeBtn.setText("إلغاء"); closeBtn.setOnClickListener(hideSettings)
    local lp = LinearLayout.LayoutParams(-2, -2); lp.setMargins(20,0,0,0); btnL.addView(closeBtn, lp)
    contentL.addView(btnL)
    scrollV.addView(contentL); _G.assistantState.settingsDialog.addView(scrollV)
    local p=WindowManager.LayoutParams(); p.width=-1; p.height=-2; p.type=2038; p.flags=40; p.format=-3; p.gravity=Gravity.CENTER
    pcall(function() _G.assistantState.wm.addView(_G.assistantState.settingsDialog,p) end)
end

function showFloatingMenu()
    if not _G.assistantState or not _G.assistantState.wm then return end
    if _G.assistantState.floatingMenu then
        pcall(_G.assistantState.wm.removeView, _G.assistantState.wm, _G.assistantState.floatingMenu); _G.assistantState.floatingMenu = nil; return
    end
    _G.assistantState.floatingMenu = LinearLayout(service); _G.assistantState.floatingMenu.setOrientation(LinearLayout.VERTICAL)
    _G.assistantState.floatingMenu.setBackgroundColor(0xCC333333); _G.assistantState.floatingMenu.setPadding(10,10,10,10)
    local settingsBtn = Button(service); settingsBtn.setText("الإعدادات"); settingsBtn.setOnClickListener(openSettings); _G.assistantState.floatingMenu.addView(settingsBtn)
    local closeBtn = Button(service); closeBtn.setText("إغلاق"); closeBtn.setOnClickListener(cleanupService); _G.assistantState.floatingMenu.addView(closeBtn)
    local params = WindowManager.LayoutParams(); params.width = -2; params.height = -2; params.type = 2038
    params.flags = 40; params.format = -3; params.gravity = Gravity.TOP | Gravity.START
    local btnPosSuccess, btnX, btnY = pcall(function() return _G.assistantState.floatingButton.getX(), _G.assistantState.floatingButton.getY() end)
    params.x = btnX or 20; params.y = (btnY or 100) + 120
    pcall(_G.assistantState.wm.addView, _G.assistantState.wm, _G.assistantState.floatingMenu, params)
end

function createFloatingButton()
    if not _G.assistantState or _G.assistantState.floatingButton or not Settings.canDrawOverlays(service) then return end
    _G.assistantState.floatingButton = Button(service); _G.assistantState.floatingButton.setText("💡")
    _G.assistantState.floatingButton.setOnClickListener(showFloatingMenu)
    local params = WindowManager.LayoutParams(); params.width = -2; params.height = -2; params.type = 2038
    params.flags = 40; params.format = -3; params.gravity = Gravity.TOP | Gravity.START; params.x = 20; params.y = 100
    pcall(_G.assistantState.wm.addView, _G.assistantState.wm, _G.assistantState.floatingButton, params)
end

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
    local prompt = history and history ~= "" and
        "History:\n" .. history .. "\nBased on the image and history, answer.\nQuestion: " .. userQuery or
        "Analyze the image and answer the question.\nQuestion: " .. userQuery
    local url = "https://generativelanguage.googleapis.com/v1beta/models/" .. selectedGeminiModelId .. ":generateContent?key=" .. geminiApiKey
    local requestBody = [[{"contents": [{"parts": [{"text": "]] .. escapeJsonString("Your entire response must be in Arabic.\n" .. prompt) .. [["},{"inline_data": { "mime_type": "image/png", "data": "]] .. base64Image .. [[" }}]}]}]]
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

function startVoiceRecognition()
    if not _G.assistantState then return end
    if _G.assistantState.recognizer then pcall(_G.assistantState.recognizer.destroy, _G.assistantState.recognizer) end
    if not SpeechRecognizer.isRecognitionAvailable(service) then speak("خدمة التعرف على الصوت غير متاحة."); return end

    _G.assistantState.recognizer = SpeechRecognizer.createSpeechRecognizer(service)
    local intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH); intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, "ar"); intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, false); intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)

    local listener = RecognitionListener {
        onReadyForSpeech = function() speak("...أستمع") end, onBeginningOfSpeech = function() end, onRmsChanged = function() end, onBufferReceived = function() end, onEndOfSpeech = function() end,
        onError = function(error)
             local errorMsg = "لم أسمع شيئًا. حاول مرة أخرى بالضغط على السكريبت."
             if error == SpeechRecognizer.ERROR_NO_MATCH then errorMsg = "لم أفهم ما قلته. يرجى المحاولة مرة أخرى."
             elseif error == SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS then errorMsg = "خطأ: ليس لدي صلاحيات الميكروفون." end
             speak(errorMsg)
        end,
        onResults = function(results)
            local matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if matches and matches.size() > 0 then
                local userQuery = matches.get(0)
                local resetKeywords = {"حلل الشاشة", "صورة جديدة", "ابدا من جديد", "حلل الشاشه"}
                local shouldReset = false; for _, keyword in ipairs(resetKeywords) do if userQuery == keyword then shouldReset = true; break end end
                local function processQuery(base64Image)
                    queryImageWithGemini(base64Image, userQuery, _G.assistantState.conversationHistory, function(answer)
                        speak(answer)
                        _G.assistantState.conversationHistory = _G.assistantState.conversationHistory .. "\nUser: " .. userQuery .. "\nAssistant: " .. answer
                    end)
                end
                if shouldReset or not _G.assistantState.lastScreenshotBase64 then
                    speak("تمام، جاري تحليل الشاشة الحالية...")
                    _G.assistantState.conversationHistory = ""
                    takeScreenshotAndEncode(function(base64Image)
                        if base64Image then _G.assistantState.lastScreenshotBase64 = base64Image; processQuery(base64Image)
                        else speak("عذراً، لم أتمكن من التقاط الشاشة.") end
                    end)
                else
                    speak("تمام، بالنسبة للصورة الحالية...")
                    processQuery(_G.assistantState.lastScreenshotBase64)
                end
            else
                 speak("لم أتمكن من التعرف على أي كلام. حاول مرة أخرى.")
            end
        end,
        onPartialResults = function() end, onEvent = function() end
    }
    _G.assistantState.recognizer.setRecognitionListener(listener)
    pcall(_G.assistantState.recognizer.startListening, _G.assistantState.recognizer, intent)
end

function initTextToSpeech(callback)
    if _G.assistantState.tts and _G.assistantState.isTtsInitialized then
        if callback then callback(true); return end
    end
    local listener = TextToSpeech.OnInitListener {
        onInit = function(status)
            if status == TextToSpeech.SUCCESS then
                _G.assistantState.isTtsInitialized = true
                local arabicLocale = Locale("ar")
                local langResult = _G.assistantState.tts.setLanguage(arabicLocale)
                if langResult == TextToSpeech.LANG_MISSING_DATA or langResult == TextToSpeech.LANG_NOT_SUPPORTED then
                    _G.assistantState.tts.setLanguage(Locale.getDefault())
                end
                if callback then callback(true) end
            else
                _G.assistantState.isTtsInitialized = false
                if callback then callback(false) end
            end
        end
    }
    _G.assistantState.tts = TextToSpeech(service, listener)
end

-- =============================================================================
-- SECTION 3: SCRIPT EXECUTION
-- =============================================================================

function main()
    if not _G.assistantState then
        _G.assistantState = { isFirstRun = true, recognizer = nil, tts = nil, isTtsInitialized = false, wm = service.getSystemService(Context.WINDOW_SERVICE), settingsDialog = nil, floatingButton = nil, floatingMenu = nil, lastScreenshotBase64 = nil, conversationHistory = "" }
    end
    if _G.assistantState.isFirstRun then
        initTextToSpeech(function(success)
            if success then speak("مساعد الشاشة التفاعلي جاهز.") else service.showToast("فشل تهيئة محرك النطق.") end
            createFloatingButton()
            startVoiceRecognition()
        end)
        _G.assistantState.isFirstRun = false
    else
        startVoiceRecognition()
    end
end

main()
