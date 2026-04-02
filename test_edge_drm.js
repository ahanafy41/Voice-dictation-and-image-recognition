const crypto = require('crypto');
const WebSocket = require('ws');

const TRUSTED_CLIENT_TOKEN = "6A5AA1D4EAFF4E9FB37E23D68491D6F4";
const WIN_EPOCH = 11644473600;
const S_TO_NS = 1e9;

function generateSecMsGec() {
    let ticksBig = BigInt(Math.floor(Date.now() / 1000));
    ticksBig += BigInt(WIN_EPOCH);
    ticksBig -= ticksBig % BigInt(300);
    ticksBig *= BigInt(S_TO_NS / 100);

    const strToHash = ticksBig.toString() + TRUSTED_CLIENT_TOKEN;
    const hash = crypto.createHash('sha256').update(strToHash).digest('hex').toUpperCase();
    return hash;
}

const CHROMIUM_FULL_VERSION = "143.0.3650.75";
const CHROMIUM_MAJOR_VERSION = CHROMIUM_FULL_VERSION.split('.')[0];
const SEC_MS_GEC_VERSION = `1-${CHROMIUM_FULL_VERSION}`;

function generateMuid() {
    return crypto.randomBytes(16).toString('hex').toUpperCase();
}

async function testWs() {
    const wsUrl = `wss://speech.platform.bing.com/consumer/speech/synthesize/readaloud/edge/v1?TrustedClientToken=${TRUSTED_CLIENT_TOKEN}&ConnectionId=${crypto.randomUUID().replace(/-/g, "")}&Sec-MS-GEC=${generateSecMsGec()}&Sec-MS-GEC-Version=${SEC_MS_GEC_VERSION}`;

    const headers = {
        "User-Agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/${CHROMIUM_MAJOR_VERSION}.0.0.0 Safari/537.36 Edg/${CHROMIUM_MAJOR_VERSION}.0.0.0`,
        "Accept-Encoding": "gzip, deflate, br, zstd",
        "Accept-Language": "en-US,en;q=0.9",
        "Pragma": "no-cache",
        "Cache-Control": "no-cache",
        "Origin": "chrome-extension://jdiccldimpdaibmpdkjnbmckianbfold",
        "Cookie": `muid=${generateMuid()};`
    };

    const ws = new WebSocket(wsUrl, { headers });

    ws.on("open", () => {
        console.log("Connected!");
        const date = new Date().toUTCString();
        const config = `X-Timestamp:${date}\r\nContent-Type:application/json; charset=utf-8\r\nPath:speech.config\r\n\r\n{"context":{"synthesis":{"audio":{"metadataoptions":{"sentenceBoundaryEnabled":"false","wordBoundaryEnabled":"false"},"outputFormat":"audio-24khz-48kbitrate-mono-mp3"}}}}`;
        ws.send(config);

        const reqId = crypto.randomUUID().replace(/-/g, "");
        const ssml = `<speak version='1.0' xmlns='http://www.w3.org/2001/10/synthesis' xml:lang='ar-EG'><voice name='ar-EG-SalmaNeural'><prosody rate='+0%' pitch='default'>مرحبا بكم</prosody></voice></speak>`;
        const payload = `X-RequestId:${reqId}\r\nContent-Type:application/ssml+xml\r\nX-Timestamp:${date}\r\nPath:ssml\r\n\r\n${ssml}`;

        ws.send(payload);
    });

    ws.on("message", (data) => {
        if (typeof data === "string") {
            console.log("TEXT:", data);
            if (data.includes("turn.end")) ws.close();
        } else {
            console.log("BINARY CHUNK RECEIVED:", data.length, "bytes");
        }
    });

    ws.on("error", (err) => console.log("ERROR:", err));
    ws.on("close", () => console.log("CLOSED"));
}

testWs();
