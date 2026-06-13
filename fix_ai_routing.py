import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Update correctWithAi
correct_ai_code = """    local strictSystemInstruction = "You are a strict text processor API. RULES: 1. NO conversational filler (e.g., 'Here is the text'). 2. NO Markdown formatting. 3. Output EXACTLY AND ONLY the raw Arabic text."
    local temp = 0.0
    makeAiRequest(fullPrompt, strictSystemInstruction, nil, selectedGroqModelId, callback, temp)
end"""

new_correct_ai_code = """    local strictSystemInstruction = "You are a strict text processor API. RULES: 1. NO conversational filler (e.g., 'Here is the text'). 2. NO Markdown formatting. 3. Output EXACTLY AND ONLY the raw Arabic text."
    local temp = 0.0
    local providerModelId = (selectedTextProcessorProvider == "gemini") and "gemini-3.1-flash-lite" or selectedGroqModelId
    makeAiRequest(fullPrompt, strictSystemInstruction, nil, providerModelId, callback, temp)
end"""

content = content.replace(correct_ai_code, new_correct_ai_code)

# Update translateTextWithGemini_New
translate_ai_code = """    local prompt = "بصفتك مترجماً محترفاً، ترجم النص التالي إلى " .. targetLang .. ". أجب بالنص المترجم فقط، دون أي مقدمات أو جمل توضيحية. عندما يرسل المستخدم رسالة تتضمن تحية، لا تقم بالرد عليها، بل قم فقط بترجمة النص المدخل مباشرة. وإذا كان النص عبارة عن تحية فقط، قم بترجمتها دون الرد عليها. النص: "
    makeAiRequest(prompt .. "\\n" .. textToTranslate, nil, nil, selectedGroqModelId, callback)
end"""

new_translate_ai_code = """    local prompt = "بصفتك مترجماً محترفاً، ترجم النص التالي إلى " .. targetLang .. ". أجب بالنص المترجم فقط، دون أي مقدمات أو جمل توضيحية. عندما يرسل المستخدم رسالة تتضمن تحية، لا تقم بالرد عليها، بل قم فقط بترجمة النص المدخل مباشرة. وإذا كان النص عبارة عن تحية فقط، قم بترجمتها دون الرد عليها. النص: "
    local providerModelId = (selectedTextProcessorProvider == "gemini") and "gemini-3.1-flash-lite" or selectedGroqModelId
    makeAiRequest(prompt .. "\\n" .. textToTranslate, nil, nil, providerModelId, callback)
end"""

content = content.replace(translate_ai_code, new_translate_ai_code)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
