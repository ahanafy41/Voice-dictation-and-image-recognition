import sys

with open('main.lua', 'r') as f:
    lines = f.readlines()

# I will find the START and END of the health check section and the messed up lines.
# And I will RECONSTRUCT the file from parts I know are good.

# Part 1: Everything before -- ### REAL SYSTEM HEALTH CHECK
start_idx = -1
for i, line in enumerate(lines):
    if '-- ### REAL SYSTEM HEALTH CHECK' in line:
        start_idx = i
        break

if start_idx == -1:
    print("Start marker not found")
    sys.exit(1)

# Part 2: Find where the GOOD code resumes.
# Based on my 'sed' output, line 1018 looks like it belongs to a different function.
# It seems to be part of 'transcribeAudio' or similar.
resume_marker = 'callback("Error Gemini: " .. status .. " - " .. tostring(response), true)'
resume_idx = -1
for i in range(start_idx, len(lines)):
    if resume_marker in lines[i]:
        resume_idx = i
        break

if resume_idx == -1:
    print("Resume marker not found")
    sys.exit(1)

# Now Part 2 actually starts a bit before the resume marker, it's inside an else/if block.
# Let's find the 'elseif' or 'function' that it belongs to.
# Based on previous reads, it's likely 'uploadFileToGemini' or 'transcribeAudio'.

health_check_code = [
    '-- ### REAL SYSTEM HEALTH CHECK (TESTING IN REALITY) ###\n',
    'function runSystemHealthCheck()\n',
    '    local results = {}\n',
    '    local totalTests = 3\n',
    '    local completedTests = 0\n',
    '    service.asyncSpeak("بدء فحص سلامة النظام...")\n',
    '    showResultWindow("فحص النظام", "⏳ جاري بدء الاختبارات الحقيقية...")\n',
    '\n',
    '    local function finalizeHealthCheck()\n',
    '        completedTests = completedTests + 1\n',
    '        if completedTests == totalTests then\n',
    '            local finalSummary = "\\n--- تقرير الفحص النهائي ---\\n"\n',
    '            local finalSpeak = "اكتمل الفحص. "\n',
    '            for _, res in ipairs(results) do\n',
    '                finalSummary = finalSummary .. (res.success and "✅ " or "❌ ") .. res.name .. ": " .. res.msg .. "\\n"\n',
    '                finalSpeak = finalSpeak .. res.name .. (res.success and " يعمل بنجاح. " or " فيه مشكلة. ")\n',
    '            end\n',
    '            showResultWindow("تقرير فحص النظام", finalSummary)\n',
    '            service.asyncSpeak(finalSpeak)\n',
    '        end\n',
    '    end\n',
    '\n',
    '    Http.get("https://www.google.com", nil, "UTF-8", nil, function(status, resp)\n',
    '        if status == 200 then\n',
    '            table.insert(results, {name = "الإنترنت", success = true, msg = "متصل وشغال."})\n',
    '        else\n',
    '            table.insert(results, {name = "الإنترنت", success = false, msg = "لا يوجد اتصال أو جوجل محجوب."})\n',
    '        end\n',
    '        finalizeHealthCheck()\n',
    '    end)\n',
    '\n',
    '    if geminiApiKey == "" then\n',
    '        table.insert(results, {name = "Gemini API", success = false, msg = "المفتاح مفقود."})\n',
    '        finalizeHealthCheck()\n',
    '    else\n',
    '        makeAiRequest("Say \'OK\'", "Test", nil, "gemini", function(res)\n',
    '            if res and not res:match("^Error") and not res:match("^خطأ") then\n',
    '                table.insert(results, {name = "Gemini API", success = true, msg = "المفتاح سليم والموديل يستجيب."})\n',
    '            else\n',
    '                table.insert(results, {name = "Gemini API", success = false, msg = "خطأ في الاستجابة: " .. tostring(res)})\n',
    '            end\n',
    '            finalizeHealthCheck()\n',
    '        end)\n',
    '    end\n',
    '\n',
    '    if groqApiKey == "" then\n',
    '        table.insert(results, {name = "Groq API", success = false, msg = "المفتاح مفقود."})\n',
    '        finalizeHealthCheck()\n',
    '    else\n',
    '        makeAiRequest("Say \'OK\'", "Test", nil, "groq", function(res)\n',
    '            if res and not res:match("^Error") and not res:match("^خطأ") then\n',
    '                table.insert(results, {name = "Groq API", success = true, msg = "المفتاح سليم والموديل يستجيب."})\n',
    '            else\n',
    '                table.insert(results, {name = "Groq API", success = false, msg = "خطأ في الاستجابة: " .. tostring(res)})\n',
    '            end\n',
    '            finalizeHealthCheck()\n',
    '        end)\n',
    '    end\n',
    'end\n',
    '\n'
]

new_lines = lines[:start_idx] + health_check_code + lines[resume_idx:]

with open('main.lua', 'w') as f:
    f.writelines(new_lines)
