# `Vue` instance

```ts
import Vue from "vue";

let app = new Vue({
  // options
});
```

`Vue` instance is the entry point of a vue application

## Options

### `render: h => element`

Render function takes a element factory as its parameter (similar to
`React.createElement`) and returns an element. Use this when template compiler
is not available
