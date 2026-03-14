# Tree Shaking

Tree shaking is a process of dead code elimination.

- **Relies on ES2015's module syntax**:
  - Configure TypeScript's `module`: to at least `"ES2015"`
  - In babel's `@babel/preset-env`, set `modules` to false
    ```json
    {
      "presets": [
        [
          "@babel/preset-env",
          {
            "modules": true
          }
        ]
      ]
    }
    ```

## Side Effects

- The opposite of side effect is pure
- Webpack would not include an unreferenced, pure entity

### Function

A **function** has side effects when it performs addition action other than
taking parameters, make computation and returning results

- Ex. modifying global registry

To specify that a function call is pure

```ts
let e = /*#__PURE__*/ React.createElement(...);
```

### Modules

A module has side effects when it performs additional actions when imported
other than exposing exports.

Side effects can be configured in `project.json`

```json
{
  "sideEffects": false
}
```

- `"sideEffects": true` all modules are considered to have side effects
- `"sideEffects": false`: all modules are pure
- `"sideEffects": [...]`: specify a list of files that have side effects
