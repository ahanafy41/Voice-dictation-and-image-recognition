const fs = require('fs');

const content = fs.readFileSync('main.lua', 'utf8');
const match = content.match(/local htmlCode = \[\[(.*?)\]\]/s);

if (match) {
    let html = match[1];

    // Replace html tags to just leave scripts since node -c will fail on HTML
    // We can just dump the whole block, find <script> tags and write them.
    let scripts = [...html.matchAll(/<script.*?>([\s\S]*?)<\/script>/gi)];
    let js = "";
    for (let s of scripts) {
        js += s[1] + "\n";
    }
    fs.writeFileSync('test.js', js);
}
