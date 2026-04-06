module.exports = [
  {
    plugins: {
      html: require("eslint-plugin-html")
    },
    files: ["**/*.html"],
    rules: {
      "no-undef": "off",
      "no-unused-vars": "off"
    }
  }
];
