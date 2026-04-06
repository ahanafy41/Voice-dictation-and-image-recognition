const fs = require("fs");
const acorn = require("acorn");

const html = fs.readFileSync("real_test_clean.html", "utf-8");
const scripts = [...html.matchAll(/<script[\s\S]*?>([\s\S]*?)<\/script>/gi)];

for (let i = 0; i < scripts.length; i++) {
    try {
        acorn.parse(scripts[i][1], { ecmaVersion: 2022 });
        console.log(`Script ${i} is OK.`);
    } catch (e) {
        console.log(`Script ${i} ERROR:`, e.message, "at line", e.loc.line);
        let lines = scripts[i][1].split("\n");
        console.log("Around line:", lines[e.loc.line - 1]);
    }
}
