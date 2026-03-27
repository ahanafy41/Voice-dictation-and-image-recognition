import sys
import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the broken showGeminiLiveWindow ending
# We want:
#     pcall(function() wm.addView(geminiLiveWindow, p) end)
# end)
# if not success then ... end
# end

# Current mess looks like:
#     pcall(function() wm.addView(geminiLiveWindow, p) end)
# end
#     end)
#     if not success then ... end
# end

pattern = r'pcall\(function\(\) wm\.addView\(geminiLiveWindow, p\) end\)\nend\n    end\)'
replacement = r'pcall(function() wm.addView(geminiLiveWindow, p) end)\n    end)'

content = re.sub(pattern, replacement, content)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)

# Now let's check for "function" vs "end" count as a rough guide
print(f"Function count: {content.count('function')}")
print(f"End count: {content.count('end')}")
