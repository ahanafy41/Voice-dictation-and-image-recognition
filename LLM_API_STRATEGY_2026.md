# LLM API Strategy & Audiobook Architecture (2026)

## 1. The Zero-Cost AI API Strategy for 2026
Due to severe free tier restrictions introduced by Google AI Studio (Gemini API) and Hugging Face in late 2025/2026, relying solely on a single provider for high-volume text and image processing in a production Android Accessibility app is no longer viable.

To bypass rate limits (Error 429) and maintain a completely free and unlimited experience, the application will implement a **Smart Fallback Router (API Multiplexing)** using the following Zero-Cost Stack:

### A. Primary Fast Text Inference (The Sprinter): Groq
* **Role**: Real-time voice dictation, fast text correction, and immediate conversational queries.
* **Why**: Groq's LPU architecture provides unmatched speed (often >300 tokens/sec) and maintains a generous free tier for developers.

### B. High-Volume Text & Image Fallback (The Workhorse): Cloudflare Workers AI
* **Role**: Bulk text processing, image generation/analysis, and backup when Groq rate limits are hit.
* **Why**: Cloudflare offers a true "No Credit Card Required" free tier, granting 10,000 Neurons per day (which reset daily at 00:00 UTC). This is sufficient for thousands of lightweight LLM requests (e.g., using `Llama-3.1-8B-Instruct`).

### C. Unlimited Conversational Fallback (The Hacker's Path): Reverse-Engineered APIs
* **Role**: Continuous dialogue and document Q&A when official free tiers are exhausted.
* **Why**: Utilizing open-source reverse-engineered endpoints (such as GitHub projects exposing the DuckDuckGo Chat API or G4F) allows access to premium models (`claude-3-haiku`, `gpt-4o-mini`, `llama-3.3-70b`) completely free and without explicit daily rate limits.

### D. Multi-Modal Heavy Lifting (The Visionary): Gemini API (Strictly Scoped)
* **Role**: Only used for complex PDF extraction, high-resolution image understanding, and the new Gemini TTS features.
* **Why**: Gemini 2.5 Pro and Flash tiers have been drastically reduced (e.g., 50-250 Requests Per Day). By routing simple text tasks to Groq/Cloudflare, we conserve Gemini's precious daily quota for tasks that genuinely require its massive 1M+ token context window.

---

## 2. Gemini TTS Audiobook Generator Architecture
To provide a premium "Audiobook" experience for blind and visually impaired users without consuming massive API quotas or locking up the UI, we will integrate the new `gemini-2.5-flash-preview-tts` model.

### A. The Challenge with Raw Documents (TXT, PDF, Word)
Unlike EPUBs, standard documents lack structural metadata (Chapters). Sending a 300-page PDF to a TTS API character-by-character is inefficient, while sending it all at once exceeds payload limits and causes timeouts.

### B. The Solution: Virtual Chunking System
1. **Intelligent Segmentation**: The extracted raw text will be programmatically split into "Virtual Chunks" of approximately 2000-3000 characters.
2. **Contextual Integrity**: The algorithm will ensure splits only occur at sentence boundaries (e.g., periods `.` or newlines `\n`) to prevent mid-word audio cutoffs.
3. **Index Generation**: These chunks will serve as "Virtual Chapters", allowing the app to build a navigable index (e.g., Chunk 1 to Chunk 50).

### C. User Control: Custom Range Selection
* Users will be presented with the total number of Virtual Chunks.
* They can select a specific range to synthesize (e.g., "Convert from Chunk 5 to Chunk 10").
* To assist screen reader users in identifying chunks, the UI will optionally read aloud the first sentence of a selected chunk.

### D. The Sequential Synthesis Engine (Background Processing)
* When export begins, a background Java Thread processes the selected chunks sequentially.
* `Chunk 1` is sent to the Gemini TTS API. The returned Base64 audio is decoded and saved as `temp_chunk_1.wav`.
* This process repeats iteratively until the selected range is complete.

### E. Persistent Progress (Resume Support)
* After every successful chunk synthesis, the `currentChunkIndex` is saved to Android's `SharedPreferences`.
* If the app is closed, crashes, or the OS kills the background service, the user can resume. The app will read the `SharedPreferences` and seamlessly pick up synthesis from `Chunk N+1` without re-requesting previous chunks.

### F. Final Concatenation (Audiobook Assembly)
* Once all chunks in the selected range are successfully downloaded as `.wav` files, a native Lua concatenation function (modifying `_G.appendWavFiles`) merges them.
* It extracts the 44-byte RIFF/WAVE header from `temp_chunk_1.wav`.
* It appends the raw PCM data from all subsequent chunks into a single master file (e.g., `MyBook_Audiobook.wav`).
* Temporary chunk files are automatically deleted to free up device storage.

### G. Voice Selection
The UI will expose a settings menu allowing users to select from Gemini's diverse voice cast (e.g., `Kore` for authoritative reading, `Puck` for energetic pacing, `Charon` for informative tones) by injecting the `voiceName` parameter into the JSON payload of the Gemini API request.
