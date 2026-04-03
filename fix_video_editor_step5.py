import re

with open("main.lua", "r") as f:
    content = f.read()

# Update the JS `generateScenes` implementation to use `window.prompt` instead of `fetch`
js_gen_pattern = r'(async function generateScenes\(\) \{[\s\S]*?const btn = document\.getElementById\(\'btn-generate-script\'\);\n\s*btn\.innerHTML = \'<i class="fa-solid fa-spinner fa-spin"><\/i> جاري التوليد\.\.\.\'; btn\.disabled = true;)([\s\S]*?)(function renderScenesUI)'

js_gen_replacement = r"""\1

            // Call Lua directly via prompt to bypass CORS and load efficiently
            window.prompt("GENERATE_SCENES", prompt);

            // Note: The rest is handled asynchronously by window.onScenesGeneratedNative
        }

        \3"""

content = re.sub(js_gen_pattern, js_gen_replacement, content)

with open("main.lua", "w") as f:
    f.write(content)
