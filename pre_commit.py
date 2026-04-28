import subprocess
import sys
import os

def check_syntax(file_path):
    """Checks the syntax of a Lua file using the pre-compiled luac binary."""
    if not os.path.exists(file_path):
        print(f"❌ File not found: {file_path}")
        return False

    print(f"🔍 Checking syntax for {file_path}...")

    # Path to the luac binary created by init_env.sh
    luac_path = './.bin/luac'

    if not os.path.exists(luac_path):
        print("❌ Error: luac binary not found in .bin/. Please run 'bash init_env.sh' first.")
        return False

    try:
        # Run luac with -p (parse only) flag
        result = subprocess.run([luac_path, '-p', file_path],
                                capture_output=True, text=True)

        if result.returncode == 0:
            print(f"✅ SUCCESS: '{file_path}' syntax is correct.")
            return True
        else:
            print(f"❌ SYNTAX ERROR in '{file_path}':")
            # Print the error message from luac (it includes line number)
            print("-" * 40)
            print(result.stderr.strip())
            print("-" * 40)
            return False

    except Exception as e:
        print(f"❌ An unexpected error occurred: {e}")
        return False

if __name__ == "__main__":
    # You can add more files to this list if needed
    files_to_check = ['main.lua']

    success = True
    for f in files_to_check:
        if not check_syntax(f):
            success = False

    # Run the JS syntax tester
    print("\n🔍 Running JS Syntax Check...")
    js_result = subprocess.run([sys.executable, 'lua_js_tester.py'])
    if js_result.returncode != 0:
        success = False

    if not success:
        print("\n🚨 Please fix the errors above before proceeding.")
        sys.exit(1)
    else:
        print("\n🚀 All files passed syntax check. Ready to go!")
