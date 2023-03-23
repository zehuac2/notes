# Basic Settings

## Mode

```js
module.exports = {
  mode: "development",
};
```

By default, webpack uses production mode.

- Production mode produces optimized and minimized code to reduce loadtime
- Development mode produces code that are easier to debug

## Chunks

```js
module.exports = {
  entry: {
    chunk: "entry file",
  },
};
```

Only the entry file is needed to generate a chunk. Imports would be resolved
automatically.

## Output

```js
module.exports = {
  output: {
    // [name] is the names of chunks
    filename: "[name].xxx",
    // where to put the outputs
    path: "path",
  },
};
```

# Other Settings

- [Module (files)](./Modules.md)
