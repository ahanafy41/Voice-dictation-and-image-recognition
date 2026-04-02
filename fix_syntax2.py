with open("main.lua", "r", encoding="utf-8") as f:
    code = f.read()

import re

# Fix line 3076 syntax error, and put the function back correctly.
# The error was replacing "function showYoutubeAudioWindow" but it seems it got corrupted.
# Let's replace "()\n    if youtubeAudioWindow then return end" with the correct function definition.

code = code.replace("()\n    if youtubeAudioWindow then return end", "function showYoutubeAudioWindow()\n    if youtubeAudioWindow then return end")

with open("main.lua", "w", encoding="utf-8") as f:
    f.write(code)
