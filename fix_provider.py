import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Add selectedTextProcessorProvider global and load it from prefs
prefs_load_block = """selectedDictationMode = prefs.getString("selectedDictationMode", defaultDictationMode)"""
new_prefs_load_block = """selectedDictationMode = prefs.getString("selectedDictationMode", defaultDictationMode)
selectedTextProcessorProvider = prefs.getString("selectedTextProcessorProvider", "groq")"""

content = content.replace(prefs_load_block, new_prefs_load_block)

# Save the preference in saveSettings
save_settings_block = """editor.putString("selectedDictationMode", selectedDictationMode or defaultDictationMode)"""
new_save_settings_block = """editor.putString("selectedDictationMode", selectedDictationMode or defaultDictationMode)
    editor.putString("selectedTextProcessorProvider", selectedTextProcessorProvider or "groq")"""

content = content.replace(save_settings_block, new_save_settings_block)

# Add the spinner to the Settings window in openSettings
# We need to find the Voice & Language section in openSettings and add the spinner for Text Processor Provider.
