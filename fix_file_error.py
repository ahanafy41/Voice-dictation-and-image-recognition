import sys
import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix transcribeWithGroq
groq_pattern = r'(function transcribeWithGroq\(filePath, callback, modelId\).*?local file = )File\(filePath\)(.*?if not file:exists\(\) then)'
groq_replacement = r'\1luajava.bindClass("java.io.File")(tostring(filePath))\2'
content = re.sub(groq_pattern, groq_replacement, content, flags=re.DOTALL)

# Fix transcribeWithWitAI
wit_pattern = r'(function transcribeWithWitAI\(filePath, callback\).*?local file = )File\(filePath\)'
wit_replacement = r'\1luajava.bindClass("java.io.File")(tostring(filePath))'
content = re.sub(wit_pattern, wit_replacement, content, flags=re.DOTALL)

# Also check uploadFileToGemini which is used by transcribeWithGemini
gemini_pattern = r'(function uploadFileToGemini\(filePath, mimeType, apiKey, callback\).*?local file = )File\(filePath\)'
gemini_replacement = r'\1luajava.bindClass("java.io.File")(tostring(filePath))'
content = re.sub(gemini_pattern, gemini_replacement, content, flags=re.DOTALL)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
