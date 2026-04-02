import asyncio
from edge_tts import Communicate

async def main():
    communicate = Communicate("مرحبا بكم في عالم الذكاء الاصطناعي", "ar-EG-SalmaNeural")
    await communicate.save("test.mp3")
    print("Saved successfully!")

asyncio.run(main())
