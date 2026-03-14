- [TS Module](#ts-module)
- [Ambient Module](#ambient-module)

# TS Module

```ts
module Foo {}
```

- Can be merged across files
- When the file contains an `export` keyword, then all modules in the file would
  not be automatically visible unless exported

# Ambient Module

```ts
declare module X {}

declare module 'path' {
  export interface Foo {}
}

declare module '*.yaml' {
  const data: any;
  export default data;
}

// other file
import { Foo } from 'path';
```

- Ambient modules contain only declarations
- When the name of an ambient module is in `""`, then the declarations can be
  imported as if they are from a file (es6 module)
- Ambient module declaration file **must not contain any import statements
  outside of ambient module declarations**
  ```ts
  declare module 'path' {
    // must be put here
    import foo from 'foo';
    export default foo;
  }
  ```
