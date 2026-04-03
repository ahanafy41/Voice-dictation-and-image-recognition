import re

with open("main.lua", "r") as f:
    content = f.read()

# Update the JS side `generateScenes` to trigger `window.prompt("GENERATE_SCENES", prompt)`
js_gen_pattern = r'(async function generateScenes\(\) \{[\s\S]*?try \{)[\s\S]*?(\} catch \(e\) \{)'
js_gen_replacement = r"""\1
                window.prompt("GENERATE_SCENES", prompt);
            \2"""
content = re.sub(js_gen_pattern, js_gen_replacement, content)

# Define `window.onScenesGeneratedNative`
on_scenes_js = """
        window.onScenesGeneratedNative = function(resultStr) {
            const btn = document.getElementById('btn-generate-script');
            btn.innerHTML = '<i class="fa-solid fa-wand-magic-sparkles"></i> توليد المشاهد'; btn.disabled = false;

            if (!resultStr || resultStr.indexOf("Error") > -1) {
                showToast('حدث خطأ في التوليد.', 'error');
                return;
            }

            try {
                // Strip markdown formatting if Gemini added it
                let cleanJson = resultStr.replace(/```json/g, "").replace(/```/g, "").trim();
                appState.scenes = JSON.parse(cleanJson);
                renderScenesUI();
                showToast('تم تجهيز المشاهد بنجاح.', 'success');
            } catch (e) {
                console.error("Parse Error:", e, resultStr);
                showToast('حدث خطأ في قراءة النتيجة.', 'error');
            }
        };
"""

content = content.replace("async function generateScenes() {", on_scenes_js + "\n        async function generateScenes() {")

# Update File picker buttons from <input type="file"> to Native prompts
# 1. Background Music
bg_music_btn = r'<input type="file" id="upload-bg-music"[^>]+>\s*<button onclick="handleGlobalMusicUpload\(\)"'
bg_music_rep = r'<button onclick="window.prompt(\'PICK_FILE\', \'bg_music\');"'
content = re.sub(bg_music_btn, bg_music_rep, content)

# 2. Scene Upload Visual
scene_upload_visual = r'<button onclick="document\.getElementById\(\'upload-visual-\$\{index\}\'\)\.click\(\)" class="bg-gray-200 hover:bg-gray-300 text-gray-800 py-1\.5 rounded text-sm font-semibold transition flex items-center justify-center gap-1" aria-label="[^"]+"><i class="fa-solid fa-upload"><\/i> رفع صورة/فيديو<\/button>\s*<input type="file" id="upload-visual-\$\{index\}" accept="image/\*,video/\*" class="hidden" onchange="handleSceneUpload\(event, \$\{index\}, \'visual\'\)">'
scene_rep_visual = r'<button onclick="window.prompt(\'PICK_FILE\', \'scene_visual_\' + index);" class="bg-gray-200 hover:bg-gray-300 text-gray-800 py-1.5 rounded text-sm font-semibold transition flex items-center justify-center gap-1"><i class="fa-solid fa-upload"></i> رفع صورة/فيديو</button>'
content = re.sub(scene_upload_visual, scene_rep_visual, content)

# 3. Scene Upload Audio
scene_upload_audio = r'<button onclick="document\.getElementById\(\'upload-audio-\$\{index\}\'\)\.click\(\)" class="bg-gray-200 hover:bg-gray-300 text-gray-800 py-1\.5 rounded text-sm font-semibold transition flex items-center justify-center gap-1" aria-label="[^"]+"><i class="fa-solid fa-upload"><\/i> رفع صوت<\/button>\s*<input type="file" id="upload-audio-\$\{index\}" accept="audio/\*" class="hidden" onchange="handleSceneUpload\(event, \$\{index\}, \'audio\'\)">'
scene_rep_audio = r'<button onclick="window.prompt(\'PICK_FILE\', \'scene_audio_\' + index);" class="bg-gray-200 hover:bg-gray-300 text-gray-800 py-1.5 rounded text-sm font-semibold transition flex items-center justify-center gap-1"><i class="fa-solid fa-upload"></i> رفع صوت</button>'
content = re.sub(scene_upload_audio, scene_rep_audio, content)

# 4. Handle Native File Selection Callback
on_file_selected_js = """
        window.onFileSelectedNative = function(filePath, sourceId) {
            if (!filePath) return;
            // Native paths like /storage/emulated/0/... can be loaded using file:// prefix
            // if WebSettings.setAllowFileAccessFromFileURLs(true) is set
            const url = "file://" + filePath;
            const ext = filePath.split('.').pop().toLowerCase();

            if (sourceId === "bg_music") {
                const audObj = new Audio(url);
                audObj.onloadedmetadata = () => {
                    const end = Math.max(appState.duration, audObj.duration);
                    addToTimeline({ id: `bgm-${Date.now()}`, type: 'audio', name: '🎵 موسيقى خلفية', src: url, start: 0, end: end, audioElement: audObj });
                    showToast('تمت إضافة موسيقى الخلفية.', 'success');
                };
                audObj.onerror = () => showToast('فشل تحميل الملف الصوتي.', 'error');
            }
            else if (sourceId.startsWith("scene_visual_")) {
                const index = parseInt(sourceId.split("_")[2]);
                const start = appState.lastItemEndTimes.visual;

                if (ext === 'jpg' || ext === 'jpeg' || ext === 'png' || ext === 'webp' || ext === 'gif') {
                    const img = new Image();
                    img.src = url;
                    img.onload = () => {
                        addToTimeline({ id: `up-${Date.now()}`, type: 'image', name: filePath.split('/').pop(), src: url, start, end: start+5, layer: 1, scale: 100, transition: 'none', transSound: false, imageElement: img });
                        appState.lastItemEndTimes.visual = start + 5;
                    };
                    img.onerror = () => showToast('فشل تحميل الصورة.', 'error');
                } else if (ext === 'mp4' || ext === 'webm' || ext === 'mkv' || ext === 'mov') {
                    const vid = document.createElement('video');
                    vid.src = url;
                    vid.muted = true;
                    vid.onloadedmetadata = () => {
                        addToTimeline({ id: `up-${Date.now()}`, type: 'video', name: filePath.split('/').pop(), src: url, start, end: start+vid.duration, layer: 1, scale: 100, transition: 'none', transSound: false, videoElement: vid });
                        appState.lastItemEndTimes.visual = start + vid.duration;
                    };
                    vid.onerror = () => showToast('فشل تحميل الفيديو.', 'error');
                } else {
                    showToast('صيغة ملف غير مدعومة للصور/الفيديو.', 'error');
                }
            }
            else if (sourceId.startsWith("scene_audio_")) {
                const index = parseInt(sourceId.split("_")[2]);
                const start = appState.lastItemEndTimes.audio;

                if (ext === 'mp3' || ext === 'wav' || ext === 'm4a' || ext === 'ogg' || ext === 'aac') {
                    const audObj = new Audio(url);
                    audObj.onloadedmetadata = () => {
                        addToTimeline({ id: `audio-${Date.now()}`, type: 'audio', name: filePath.split('/').pop(), src: url, start, end: start+audObj.duration, audioElement: audObj });
                        appState.lastItemEndTimes.audio = start + audObj.duration;
                    };
                    audObj.onerror = () => showToast('فشل تحميل الصوت.', 'error');
                } else {
                    showToast('صيغة ملف غير مدعومة للصوت.', 'error');
                }
            }
        };
"""

content = content.replace("function handleGlobalMusicUpload() {", on_file_selected_js + "\n        function handleGlobalMusicUpload() {")


# 5. Fix HTML loading to allow local file access by using a dummy file:// base URL instead of https://localhost
content = content.replace('webview.loadDataWithBaseURL("https://localhost", htmlCode, "text/html", "UTF-8", nil)', 'webview.loadDataWithBaseURL("file:///android_asset/", htmlCode, "text/html", "UTF-8", nil)')

with open("main.lua", "w") as f:
    f.write(content)
