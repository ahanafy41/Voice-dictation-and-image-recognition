import sys
import re

with open("main.lua", "r") as f:
    content = f.read()

# 1. Update the model to the one requested (Gemini 3.1 Flash Live)
# We will ensure the model ID matches what was working before in the assistant
content = content.replace('model: "models/gemini-2.0-flash-exp"', 'model: "models/gemini-3.1-flash-live-preview"')

with open("main.lua", "w") as f:
    f.write(content)
