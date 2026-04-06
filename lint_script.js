const fs = require('fs');
const acorn = require('acorn');

const html = fs.readFileSync('real_test_lint.html', 'utf8');
const scripts = [...html.matchAll(/<script.*?>([\s\S]*?)<\/script>/gi)];

for (let i = 0; i < scripts.length; i++) {
    try {
        acorn.parse(scripts[i][1], { ecmaVersion: 2022, sourceType: 'module' });
        console.log(`Script ${i} is syntactically OK.`);
    } catch (e) {
        console.error(`Syntax Error in script ${i} at line ${e.loc.line}: ${e.message}`);
        const lines = scripts[i][1].split('\n');
        console.error(`Error around: ${lines[e.loc.line - 1]}`);
    }
}
