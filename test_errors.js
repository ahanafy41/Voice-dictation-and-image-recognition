const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const fs = require("fs");

const html = fs.readFileSync("full_test.html", "utf-8");
const virtualConsole = new jsdom.VirtualConsole();
virtualConsole.on("jsdomError", (e) => {
  console.error("JSDOM ERROR:", e.message);
});
virtualConsole.on("error", (e) => {
  console.error("ERROR:", e);
});

const dom = new JSDOM(html, { runScripts: "dangerously", virtualConsole });
