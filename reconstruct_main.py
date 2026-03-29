import sys
import re

with open('main_original.lua', 'r') as f:
    original = f.read()

health_check_code = r'''
-- ### REAL SYSTEM HEALTH CHECK (TESTING IN REALITY) ###
function runSystemHealthCheck()
    local results = {}
    local totalTests = 3
    local completedTests = 0
    service.asyncSpeak("بدء فحص سلامة النظام...")
    showResultWindow("فحص النظام", "⏳ جاري بدء الاختبارات الحقيقية...")

    local function finalizeHealthCheck()
        completedTests = completedTests + 1
        if completedTests == totalTests then
            local finalSummary = "\n--- تقرير الفحص النهائي ---\n"
            local finalSpeak = "اكتمل الفحص. "
            for _, res in ipairs(results) do
                finalSummary = finalSummary .. (res.success and "✅ " or "❌ ") .. res.name .. ": " .. res.msg .. "\n"
                finalSpeak = finalSpeak .. res.name .. (res.success and " يعمل بنجاح. " or " فيه مشكلة. ")
            end
            showResultWindow("تقرير فحص النظام", finalSummary)
            service.asyncSpeak(finalSpeak)
        end
    end

    -- 1. Internet & Basic connectivity
    Http.get("https://www.google.com", nil, "UTF-8", nil, function(status, resp)
        if status == 200 then
            table.insert(results, {name = "الإنترنت", success = true, msg = "متصل وشغال."})
        else
            table.insert(results, {name = "الإنترنت", success = false, msg = "لا يوجد اتصال أو جوجل محجوب."})
        end
        finalizeHealthCheck()
    end)

    -- 2. Gemini API Reality Test
    if geminiApiKey == "" then
        table.insert(results, {name = "Gemini API", success = false, msg = "المفتاح مفقود."})
        finalizeHealthCheck()
    else
        makeAiRequest("Say 'OK'", "Test", nil, "gemini", function(res)
            if res and not res:match("^Error") and not res:match("^خطأ") then
                table.insert(results, {name = "Gemini API", success = true, msg = "المفتاح سليم والموديل يستجيب."})
            else
                table.insert(results, {name = "Gemini API", success = false, msg = "خطأ في الاستجابة: " .. tostring(res)})
            end
            finalizeHealthCheck()
        end)
    end

    -- 3. Groq API Reality Test (if enabled)
    if groqApiKey == "" then
        table.insert(results, {name = "Groq API", success = false, msg = "المفتاح مفقود."})
        finalizeHealthCheck()
    else
        makeAiRequest("Say 'OK'", "Test", nil, "groq", function(res)
            if res and not res:match("^Error") and not res:match("^خطأ") then
                table.insert(results, {name = "Groq API", success = true, msg = "المفتاح سليم والموديل يستجيب."})
            else
                table.insert(results, {name = "Groq API", success = false, msg = "خطأ في الاستجابة: " .. tostring(res)})
            end
            finalizeHealthCheck()
        end)
    end
end
'''

# Escape the backslashes in the python string so they remain as \n in the output file
health_check_code = health_check_code.replace('\n', '\\n')
# Wait, no, that's wrong. I want literal \n in the file.
# In Python, r'\n' is backslash followed by n.
# If I write r'\n' to a file, it writes '\n'.
# If I write '\n' to a file, it writes a newline.
# I want to write backslash and n.

health_check_code = r'''
-- ### REAL SYSTEM HEALTH CHECK (TESTING IN REALITY) ###
function runSystemHealthCheck()
    local results = {}
    local totalTests = 3
    local completedTests = 0
    service.asyncSpeak("بدء فحص سلامة النظام...")
    showResultWindow("فحص النظام", "⏳ جاري بدء الاختبارات الحقيقية...")

    local function finalizeHealthCheck()
        completedTests = completedTests + 1
        if completedTests == totalTests then
            local finalSummary = "\\n--- تقرير الفحص النهائي ---\\n"
            local finalSpeak = "اكتمل الفحص. "
            for _, res in ipairs(results) do
                finalSummary = finalSummary .. (res.success and "✅ " or "❌ ") .. res.name .. ": " .. res.msg .. "\\n"
                finalSpeak = finalSpeak .. res.name .. (res.success and " يعمل بنجاح. " or " فيه مشكلة. ")
            end
            showResultWindow("تقرير فحص النظام", finalSummary)
            service.asyncSpeak(finalSpeak)
        end
    end

    -- 1. Internet & Basic connectivity
    Http.get("https://www.google.com", nil, "UTF-8", nil, function(status, resp)
        if status == 200 then
            table.insert(results, {name = "الإنترنت", success = true, msg = "متصل وشغال."})
        else
            table.insert(results, {name = "الإنترنت", success = false, msg = "لا يوجد اتصال أو جوجل محجوب."})
        end
        finalizeHealthCheck()
    end)

    -- 2. Gemini API Reality Test
    if geminiApiKey == "" then
        table.insert(results, {name = "Gemini API", success = false, msg = "المفتاح مفقود."})
        finalizeHealthCheck()
    else
        makeAiRequest("Say 'OK'", "Test", nil, "gemini", function(res)
            if res and not res:match("^Error") and not res:match("^خطأ") then
                table.insert(results, {name = "Gemini API", success = true, msg = "المفتاح سليم والموديل يستجيب."})
            else
                table.insert(results, {name = "Gemini API", success = false, msg = "خطأ في الاستجابة: " .. tostring(res)})
            end
            finalizeHealthCheck()
        end)
    end

    -- 3. Groq API Reality Test (if enabled)
    if groqApiKey == "" then
        table.insert(results, {name = "Groq API", success = false, msg = "المفتاح مفقود."})
        finalizeHealthCheck()
    else
        makeAiRequest("Say 'OK'", "Test", nil, "groq", function(res)
            if res and not res:match("^Error") and not res:match("^خطأ") then
                table.insert(results, {name = "Groq API", success = true, msg = "المفتاح سليم والموديل يستجيب."})
            else
                table.insert(results, {name = "Groq API", success = false, msg = "خطأ في الاستجابة: " .. tostring(res)})
            end
            finalizeHealthCheck()
        end)
    end
end
'''

# Now it should write \n correctly.
pattern = r'(function querySummaryWithGemini.*?end\s*)'
new_content = re.sub(pattern, r'\1' + health_check_code, original, flags=re.DOTALL)
new_content = new_content.replace('settings = function()', r'''
        healthCheck = function()
            local btn = Button(service); btn.setText("🔍 فحص سلامة النظام")
            btn.setContentDescription("إجراء اختبارات حقيقية للإنترنت والـ APIs")
            styleButton(btn, "tertiary")
            btn.setOnClickListener(function() hideMainWindow(); runSystemHealthCheck() end)
            return btn
        end,
        settings = function()''')
new_content = new_content.replace('reader,image,transcription,settings', 'reader,image,transcription,healthCheck,settings')

with open('main.lua', 'w') as f:
    f.write(new_content)
