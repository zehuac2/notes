# Enivonrment

Environments are specified using

```js
module.exports = {
  env: {
    browser: true,
    es2021: true,
    jest: true,
  },
};
```

Different environments enable different globals and module syntax

- es2021 enable ES modules
- jest enables `describe`, `it`, ...
- Browser enables DOM manipulation

# Globals

```js
module.exports = {
  globals: {
    glMatrix: true,
  },
};
```

Globals either allow or prohibit the use of certain globals; the above
configuration would enable

```ts
console.log(glMatrix.vec3.create());
```

# Rules

```js
module.exports = {
  rules: {
    "rule-0": "error",
    "rule-1": ["error", value],
  },
};
```

- Possible error levels
  - `"off"`
  - `"warning"`
  - `"error"`

# Extends

`extends` make the current `.eslintrc.js` an extension of predefined configurations

```js
module.exports = {
  extends: ["eslint:recommended"]
}
```
