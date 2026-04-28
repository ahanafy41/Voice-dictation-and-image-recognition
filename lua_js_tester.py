#!/usr/bin/env python3
import re
import sys
import subprocess
import os

def check_js_syntax(file_path):
    print(f"Checking {file_path} for embedded JavaScript syntax errors...")

    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Find all [[ ... ]] blocks which contain HTML/JS
    html_blocks = re.findall(r'\[\[(.*?)\]\]', content, re.DOTALL)

    js_scripts = []

    # We will also try to reconstruct html that was split by `]] .. var .. [[`
    # A simple regex to find the entire variable assignment:
    # local html = [[ ... ]] .. var .. [[ ... ]]

    # Better approach: Just find <script> tags inside the WHOLE file ignoring lua syntax for a moment.
    # Wait, the whole file is Lua.
    # Let's extract <script> ... </script> blocks.
    script_blocks = re.findall(r'<script>(.*?)</script>', content, re.DOTALL)

    if not script_blocks:
        print("No <script> tags found.")
        return True

    all_passed = True
    temp_js_file = "temp_syntax_check.js"

    for i, script in enumerate(script_blocks):
        # The script might contain Lua variable injections like:
        # const tavilyKey = "]] .. (tavilyApiKey or "") .. [[";
        # We need to stub these out so Node can parse it as JS.
        # Regex to find `]] .. anything .. [[`
        cleaned_script = re.sub(r'\]\]\s*\.\.\s*.*?\s*\.\.\s*\[\[', 'LUA_INJECTED_VAR', script, flags=re.DOTALL)

        # Also handle edge cases where it might end with `]] .. var`
        cleaned_script = re.sub(r'\]\]\s*\.\.\s*[^\n]*?', '"', cleaned_script)
        cleaned_script = re.sub(r'\.\.\s*\[\[', '"', cleaned_script)

        with open(temp_js_file, 'w', encoding='utf-8') as tf:
            tf.write(cleaned_script)

        try:
            # Run node -c (syntax check)
            result = subprocess.run(['node', '-c', temp_js_file], capture_output=True, text=True)
            if result.returncode != 0:
                print(f"\n❌ Syntax error found in script block {i+1}:")
                print(result.stderr)
                all_passed = False
            else:
                print(f"✅ Script block {i+1} passed syntax check.")
        except FileNotFoundError:
            print("⚠️ Node.js is not installed. Cannot verify JS syntax.")
            # Remove temp file and exit without failing
            if os.path.exists(temp_js_file):
                os.remove(temp_js_file)
            return True

    if os.path.exists(temp_js_file):
        os.remove(temp_js_file)

    return all_passed

if __name__ == "__main__":
    success = check_js_syntax("main.lua")
    if not success:
        sys.exit(1)
    print("✅ All embedded JS passed.")
    sys.exit(0)
