import sys
import re

with open('main.lua', 'r') as f:
    content = f.read()

# Precise replacement for the health check block
replacement = r'''
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

# Replace from the marker to the end of the problematic block.
# Since my previous attempts left it in a mess, I'll use a regex that matches from the marker
# until it finds the NEXT function (likely waitForGeminiFileActive or similar).
pattern = r'-- ### REAL SYSTEM HEALTH CHECK.*?(?=function\s+waitForGeminiFileActive)'
# Wait, let me check the file structure to be sure.
# My insertion point was AFTER querySummaryWithGemini and BEFORE waitForGeminiFileActive.
content = re.sub(pattern, replacement, content, flags=re.DOTALL)

with open('main.lua', 'w') as f:
    f.write(content)
