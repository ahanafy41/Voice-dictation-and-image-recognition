import re

with open('main.lua', 'r', encoding='utf-8') as f:
    content = f.read()

# Find dictation mode spinner creation to add the new Text Processor Provider spinner underneath it.
spinner_code = """            dmSpinner.setSelection(currDmIdx); dmSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) selectedDictationMode = dmIds[pos + 1] end }); dictationCard.addView(dmSpinner)"""

new_spinner_code = """            dmSpinner.setSelection(currDmIdx); dmSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) selectedDictationMode = dmIds[pos + 1] end }); dictationCard.addView(dmSpinner)

            -- Text Processor Provider Setting
            local providerLabel = TextView(service)
            providerLabel.setText("مزود خدمة الإملاء والترجمة:")
            providerLabel.setTextColor(0xFFE0E0E0); providerLabel.setTextSize(16); providerLabel.setTypeface(nil, Typeface.BOLD); providerLabel.setPadding(0, 30, 0, 10)
            dictationCard.addView(providerLabel)

            local tpNames = ArrayList(); tpIds = { "groq", "gemini" }
            tpNames.add("Groq (سريع ومجاني)"); tpNames.add("Gemini (أكثر دقة - Gemini 3.1 Flash Lite)")
            local tpAdapter = ArrayAdapter(service, android.R.layout.simple_spinner_item, tpNames); tpAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
            tpSpinner = Spinner(service); tpSpinner.setAdapter(tpAdapter)
            local currTpIdx = 0; if selectedTextProcessorProvider == "gemini" then currTpIdx = 1 end
            tpSpinner.setSelection(currTpIdx); tpSpinner.setOnItemSelectedListener(AdapterView.OnItemSelectedListener { onItemSelected = function(p, v, pos, id) selectedTextProcessorProvider = tpIds[pos + 1] end }); dictationCard.addView(tpSpinner)"""

content = content.replace(spinner_code, new_spinner_code)

# Add save logic for tpSpinner
save_btn_code = """                if dmSpinner and dmIds then selectedDictationMode = dmIds[dmSpinner.getSelectedItemPosition() + 1] end"""
new_save_btn_code = """                if dmSpinner and dmIds then selectedDictationMode = dmIds[dmSpinner.getSelectedItemPosition() + 1] end
                if tpSpinner and tpIds then selectedTextProcessorProvider = tpIds[tpSpinner.getSelectedItemPosition() + 1] end"""

content = content.replace(save_btn_code, new_save_btn_code)

with open('main.lua', 'w', encoding='utf-8') as f:
    f.write(content)
