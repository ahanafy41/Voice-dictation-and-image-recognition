import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Define the new Arabic translation prompt
new_translation_prompt = "بصفتك مترجماً محترفاً، ترجم النص التالي إلى " + '" .. targetLang .. "' + ". أجب بالنص المترجم فقط، دون أي مقدمات أو جمل توضيحية. عندما يرسل المستخدم رسالة تتضمن تحية، لا تقم بالرد عليها، بل قم فقط بترجمة النص المدخل مباشرة. وإذا كان النص عبارة عن تحية فقط، قم بترجمتها دون الرد عليها. النص: "

# Replace the body of translateTextWithGemini_New
# We'll replace lines from 'local prompt =' to 'makeAiRequest'
old_code = """    local prompt = "Translate to " .. targetLang .. ". Return ONLY the translation:"
    makeAiRequest(prompt .. "\\n" .. textToTranslate, nil, nil, selectedGroqModelId, callback)"""

new_code = """    local prompt = "بصفتك مترجماً محترفاً، ترجم النص التالي إلى " .. targetLang .. ". أجب بالنص المترجم فقط، دون أي مقدمات أو جمل توضيحية. عندما يرسل المستخدم رسالة تتضمن تحية، لا تقم بالرد عليها، بل قم فقط بترجمة النص المدخل مباشرة. وإذا كان النص عبارة عن تحية فقط، قم بترجمتها دون الرد عليها. النص: "
    makeAiRequest(prompt .. "\\n" .. textToTranslate, nil, nil, selectedGroqModelId, callback)"""

content = content.replace(old_code, new_code)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
