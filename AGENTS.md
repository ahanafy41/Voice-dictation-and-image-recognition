# 🛡️ Quality Assurance & "Real Testing" Protocol

This project implements a **Strict Syntax & Logic Verification** system to ensure zero-error deployments.

### 1. Environment Setup (First time in a new session)
Run the following command to download and build the Lua 5.4 compiler and interpreter:
```bash
bash init_env.sh
```

### 2. Mandatory Syntax Check
Before committing any changes to 'main.lua', you MUST run:
```bash
python3 pre_commit.py
```
If this fails, DO NOT SUBMIT. Fix the syntax errors reported by `luac`.

### 3. Logic Unit Testing
To verify helper functions and non-UI logic:
```bash
./.bin/lua test.lua
```
*(Note: Some UI-dependent tests may skip or fail in a headless environment, but core logic must pass.)*

### 4. Real-World "System Health Check" (In-App)
The app now includes a "System Health Check" (فحص سلامة النظام) feature in the Dashboard and Settings. This performs real tests:
- **Internet Connectivity:** Verifies real world access.
- **Gemini Reality Test:** Sends a dummy request to verify API Key and Model.
- **Groq Reality Test:** Verifies Groq API status.
- **Verbal Feedback:** Provides audio reports on system health.

---
**Strict Rule:** No 'main.lua' change is accepted unless `python3 pre_commit.py` returns SUCCESS.
