import sys
import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

router_code = r'''function transcribeAudio(filePath, callback)
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

    if provider == "groq" then
        transcribeWithGroq(filePath, callback, modId)
    elseif provider == "gemini" then
        transcribeWithGemini(filePath, callback, modId)
    elseif provider == "wit" then
        transcribeWithWitAI(filePath, callback)
    else
        callback("Error: Unknown provider " .. tostring(provider), true)
    end
end'''

# We need to insert it after the 3 new functions.
# Let's find transcribeWithWitAI and insert after it.

pattern = r'function transcribeWithWitAI\(filePath, callback\)'
match = re.search(pattern, content)
if match:
    start = match.start()
    depth = 0
    end_pos = -1
    for i in range(start, len(content)):
        if re.match(r'\b(function|if|while|for|do)\b', content[i:i+10]): depth += 1
        if re.match(r'\bend\b', content[i:i+4]):
            depth -= 1
            if depth == 0:
                end_pos = i + 3
                break

    if end_pos != -1:
        new_content = content[:end_pos] + "\n\n" + router_code + content[end_pos:]
        with open('main.lua', 'w', encoding='utf-8') as f:
            f.write(new_content)
