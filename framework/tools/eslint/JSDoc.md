# JSDoc

- Provided by plugin `eslint-plugin-jsdoc`

## Rules

By default, jsdoc is only required on `FunctionDeclaration`, to enable it on
more places

```ts
module.exports = {
  rules: {
    "jsdoc/require-jsdoc": [
      "error",
      {
        require: {
          ClassDeclaration: true,
          ClassExpression: true,
          FunctionDeclaration: true,
          FunctionExpression: true,
          MethodDefinition: true,
        },
      },
    ],
  },
};
```

### Common Rules

Common rules can be enabled via

```ts
module.exports = {
  extends: ["plugin:jsdoc/recommended"],
};
```

- `jsdoc/require-param`: require jsdoc to contain `@param` tags for all
  parameters
- `jsdoc/require-param-description`: require `@param` tags to contain
  descriptions
- `jsdoc/require-param-name`: require `@param` to contain names
- `jsdoc/require-param-type`: require `@param` tags to contain tags
- `jsdoc/require-returns`: require `@return` tags to be present on functions
- `jsdoc/require-returns-type`: require `@return` tags to contain types

More at
[Github](https://github.com/gajus/eslint-plugin-jsdoc#eslint-plugin-jsdoc-configuration)
