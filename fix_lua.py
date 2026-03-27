import sys, re

with open('main.lua', 'r') as f:
    content = f.read()

sort_start_marker = 'local sortCard = createCard(contentL)'
next_section_marker = '-- SECTION: Voice & Language'

start_idx = content.find(sort_start_marker)
end_idx = content.find(next_section_marker)

if start_idx != -1 and end_idx != -1:
    clean_sort_ui = """local sortCard = createCard(contentL)
    addSectionHeader("ترتيب اللوحة السريعة", sortCard)

    local sortContainer = LinearLayout(service)
    sortContainer.setOrientation(LinearLayout.VERTICAL)
    sortCard.addView(sortContainer)

    local function refreshSortUI()
        sortContainer.removeAllViews()
        local keys = {}
        if not dashboardOrder then dashboardOrder = "assistant,dictation,reader,image,transcription,settings" end
        for k in dashboardOrder:gmatch("([^,]+)") do
            keys[#keys + 1] = k:gsub("^%%s+", ""):gsub("%%s+$", "")
        end

        local keyNames = {
            assistant = "المساعد الشخصي",
            dictation = "الإملاء والترجمة",
            reader = "قارئ المستندات",
            image = "وصف الصور",
            transcription = "تفريغ الصوت",
            settings = "الإعدادات"
        }

        for i, k in ipairs(keys) do
            local row = LinearLayout(service)
            row.setGravity(Gravity.CENTER_VERTICAL)
            row.setPadding(0, 15, 0, 15)

            local nameTv = TextView(service)
            nameTv.setText(keyNames[k] or k)
            nameTv.setTextColor(0xFFFFFFFF)
            nameTv.setTextSize(17)
            local lp = LinearLayout.LayoutParams(0, -2, 1.0)
            row.addView(nameTv, lp)

            if i > 1 then
                local upBtn = Button(service); upBtn.setText("🔼"); styleButton(upBtn, "secondary")
                upBtn.setContentDescription("نقل " .. (keyNames[k] or k) .. " للأعلى")
                upBtn.setPadding(10, 10, 10, 10)
                upBtn.setOnClickListener(function()
                    keys[i], keys[i-1] = keys[i-1], keys[i]
                    dashboardOrder = table.concat(keys, ",")
                    service.asyncSpeak("تم نقل " .. (keyNames[k] or k) .. " للأعلى")
                    refreshSortUI()
                end)
                row.addView(upBtn)
            end

            if i < #keys then
                local downBtn = Button(service); downBtn.setText("🔽"); styleButton(downBtn, "secondary")
                downBtn.setContentDescription("نقل " .. (keyNames[k] or k) .. " للأسفل")
                downBtn.setPadding(10, 10, 10, 10)
                downBtn.setOnClickListener(function()
                    keys[i], keys[i+1] = keys[i+1], keys[i]
                    dashboardOrder = table.concat(keys, ",")
                    service.asyncSpeak("تم نقل " .. (keyNames[k] or k) .. " للأسفل")
                    refreshSortUI()
                end)
                local dlp = LinearLayout.LayoutParams(-2, -2)
                dlp.leftMargin = 15
                row.addView(downBtn, dlp)
            end
            sortContainer.addView(row)
        end
    end
    refreshSortUI()

    """
    new_content = content[:start_idx] + clean_sort_ui + content[end_idx:]
    with open('main.lua', 'w') as f:
        f.write(new_content)
    print('Sorting UI cleaned and replaced.')
else:
    print('Markers not found.')
