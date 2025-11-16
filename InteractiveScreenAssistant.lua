-- Interactive Screen Assistant Script
-- Version: 3.1.1 (Final Polish & Fixes)
-- Description: A streamlined, state-managed interactive assistant. Each activation captures a new
-- screenshot and builds upon a continuous conversation history. Includes voice commands for settings and shutdown.

-- =============================================================================
-- SECTION 1: LIBRARY IMPORTS
-- =============================================================================
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
import "android.provider.Settings"
import "android.widget.ArrayAdapter"
import "android.widget.Spinner"
import "java.util.ArrayList"
import "android.R"
import "android.widget.AdapterView"
import "android.speech.tts.TextToSpeech"
import "java.util.Locale"

-- =============================================================================
-- SECTION 2: STATE, SETTINGS, AND FORWARD DECLARATIONS
-- =============================================================================

if not _G.assistantState then
    _G.assistantState = {
        isFirstRun = true, recognizer = nil, tts = nil, isTtsInitialized = false,
        wm = service.getSystemService(Context.WINDOW_SERVICE),
        settingsDialog = nil, conversationHistory = ""
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

local startVoiceRecognition
local openSettings
local initTextToSpeech
local cleanupService

-- =============================================================================
-- SECTION 3: ALL FUNCTION DEFINITIONS
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
    service.postDelayed(function()
        if _G.assistantState.recognizer then pcall(_G.assistantState.recognizer.destroy, _G.assistantState.recognizer) end
        if _G.assistantState.settingsDialog then pcall(_G.assistantState.wm.removeView, _G.assistantState.wm, _G.assistantState.settingsDialog) end
        if _G.assistantState.tts then pcall(function() _G.assistantState.tts.stop(); _G.assistantState.tts.shutdown() end) end
        _G.assistantState = nil
        pcall(service.stopSelf)
    end, 1000)
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

    -- Permission Check
    if not Settings.canDrawOverlays(service) then
        speak("خطأ: إذن الظهور فوق التطبيقات الأخرى غير مفعل. يرجى تفعيله لعرض الإعدادات.")
        return
    end

    if _G.assistantState.recognizer then pcall(_G.assistantState.recognizer.destroy, _G.assistantState.recognizer); _G.assistantState.recognizer = nil end

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

function takeScreenshotAndEncode(callback)
    local function processBitmap(bmp, nodeToRecycle)
        if bmp then
            local success, result = pcall(function()
                local baos = ByteArrayOutputStream(); bmp.compress(Bitmap.CompressFormat.PNG, 90, baos)
                local imageBytes = baos.toByteArray(); baos.close(); pcall(bmp.recycle, bmp)
                if nodeToRecycle then pcall(nodeToRecycle.recycle, nodeToRecycle) end
                return Base64.encodeToString(imageBytes, Base64.NO_WRAP)
            end)
            if success then callback(result)
            else
                if bmp and not bmp.isRecycled() then pcall(bmp.recycle, bmp) end
                if nodeToRecycle then pcall(nodeToRecycle.recycle, nodeToRecycle) end
                callback(nil)
            end
        else
            if nodeToRecycle then pcall(nodeToRecycle.recycle, nodeToRecycle) end
            callback(nil)
        end
    end
    if screenshotMode == "focus" then
        local focusedNode = service.getFocusView()
        if focusedNode then
            pcall(function() service.getScreenShot(focusedNode, { onScreenCaptureDone = function(bmp) processBitmap(bmp, focusedNode) end }) end)
        else
             pcall(function() service.getScreenShot({ onScreenCaptureDone = function(bmp) processBitmap(bmp, nil) end }) end)
        end
    else
        pcall(function() service.getScreenShot({ onScreenCaptureDone = function(bmp) processBitmap(bmp, nil) end }) end)
    end
end

function queryImageWithGemini(base64Image, userQuery, history, callback)
    if geminiApiKey == "" then callback("خطأ: مفتاح Gemini API غير مُعدّ. يرجى إضافته في الإعدادات."); return end
    if not base64Image then callback("خطأ: لا توجد صورة متاحة للتحليل."); return end
    local prompt = "You are a helpful screen assistant. Your entire response must be in Arabic.\n" ..
                   "This is the conversation history so far:\n" .. (history or "No history yet.") ..
                   "\n\nNow, analyze the new screenshot and answer the user's latest question: " .. userQuery
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
             local errorMsg = "لم أسمع شيئًا. حاول مرة أخرى."
             if error == SpeechRecognizer.ERROR_NO_MATCH then errorMsg = "لم أفهم ما قلته. يرجى المحاولة مرة أخرى."
             elseif error == SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS then errorMsg = "خطأ: ليس لدي صلاحيات الميكروفون." end
             speak(errorMsg)
        end,
        onResults = function(results)
            local matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if matches and matches.size() > 0 then
                local userQuery = matches.get(0)
                local lowerQuery = userQuery:lower()

                if lowerQuery == "الضبط" then
                    openSettings()
                    return
                elseif lowerQuery == "اغلاق المساعد" or lowerQuery == "إغلاق المساعد" then
                    cleanupService()
                    return
                end

                speak("تمام، جاري تحليل الشاشة...")
                takeScreenshotAndEncode(function(base64Image)
                    if base64Image then
                        queryImageWithGemini(base64Image, userQuery, _G.assistantState.conversationHistory, function(answer)
                            speak(answer)
                            _G.assistantState.conversationHistory = _G.assistantState.conversationHistory .. "\nالمستخدم: " .. userQuery .. "\nالمساعد: " .. answer
                        end)
                    else
                        speak("عذراً، لم أتمكن من التقاط الشاشة.")
                    end
                end)
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
                _G.assistantState.tts.setLanguage(arabicLocale)
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
-- SECTION 4: SCRIPT EXECUTION ENTRY POINT
-- =============================================================================

function main()
    if not _G.assistantState then
        _G.assistantState = { isFirstRun = true, recognizer = nil, tts = nil, isTtsInitialized = false, wm = service.getSystemService(Context.WINDOW_SERVICE), settingsDialog = nil, conversationHistory = "" }
    end
    if _G.assistantState.isFirstRun then
        initTextToSpeech(function(success)
            if success then speak("مساعد الشاشة التفاعلي جاهز.") else service.showToast("فشل تهيئة محرك النطق.") end
            startVoiceRecognition()
        end)
        _G.assistantState.isFirstRun = false
    else
        startVoiceRecognition()
    end
end

main()
