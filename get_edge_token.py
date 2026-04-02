import re
import uuid
import asyncio
import websockets
import json
import time

async def main():
    token = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
    conn_id = uuid.uuid4().hex

    # Try the regular bing endpoint
    ws_url = f"wss://speech.platform.bing.com/consumer/speech/synthesize/readaloud/edge/v1?TrustedClientToken={token}"

    # Use a different secret for Sec-MS-GEC
    import hashlib
    from datetime import datetime, timezone

    def get_sec_ms_gec():
        ticks = int(datetime.now(timezone.utc).timestamp())
        rounded_ticks = ticks - (ticks % 300)
        # Windows version
        str_to_hash = f"{rounded_ticks}130.0.2849.68"
        hashed = hashlib.sha256(str_to_hash.encode('utf-8')).hexdigest().upper()
        return hashed, "1-130.0.2849.68"

    sec_ms_gec, version = get_sec_ms_gec()

    headers = {
        "Origin": "chrome-extension://jdiccldimpdaibmpdkjnbnkndfdndkgc",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0",
        "Sec-MS-GEC": sec_ms_gec,
        "Sec-MS-GEC-Version": version
    }

    try:
        async with websockets.connect(ws_url, additional_headers=headers) as ws:
            print("Connected!")
            break_loop = False
            # ...
    except Exception as e:
        print(f"Error: {e}")

asyncio.run(main())
