# Type Script

```js
module.exports = {
  parser: "@typescript-eslint/parser",
  parserOptions: {
    ecmaVersion: 12,
    sourceType: "module",
  },
  plugins: ["@typescript-eslint"]
  rules: {
    "no-unused-vars": "off"
    "@typescript-eslint/no-unused-vars": "error",
  }
}
```

Standard rules does not work well with typescript, use those provided by
`@typescript-eslint`
