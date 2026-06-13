import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix geminiModels
content = re.sub(r'\{ name = "Gemini 3\.1 Flash-Lite \(الأسرع والأحدث\)", id = "gemini-3\.1-flash-lite-preview" \}',
                 r'{ name = "Gemini 3.1 Flash-Lite (الأسرع والأحدث)", id = "gemini-3.1-flash-lite" }', content)
content = re.sub(r'\{ name = "Gemini 3 Flash \(أداء عالي\)", id = "gemini-3-flash-preview" \}',
                 r'{ name = "Gemini 3 Flash (أداء عالي)", id = "gemini-3-flash" }', content)

# Fix default
content = re.sub(r'local defaultGeminiModelId = "gemini-3\.1-flash-lite-preview"',
                 r'local defaultGeminiModelId = "gemini-3.1-flash-lite"', content)

# Fix audioModels
content = re.sub(r'\{ name = "Gemini 3\.1 Flash-Lite \(Gemini\)", id = "gemini-3\.1-flash-lite-preview", provider = "gemini" \}',
                 r'{ name = "Gemini 3.1 Flash-Lite (Gemini)", id = "gemini-3.1-flash-lite", provider = "gemini" }', content)
content = re.sub(r'\{ name = "Gemini 3 Flash \(Gemini\)", id = "gemini-3-flash-preview", provider = "gemini" \}',
                 r'{ name = "Gemini 3 Flash (Gemini)", id = "gemini-3-flash", provider = "gemini" }', content)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
