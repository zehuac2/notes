- [Modules](#modules)
- [ES 2015 Module](#es-2015-module)
  - [Non JS/TS Files](#non-jsts-files)
  - [Absolute Import](#absolute-import)
    - [TypeScript](#typescript)
      - [`node_modules`](#node_modules)
    - [File Extension](#file-extension)
- [TS Module vs TS Namespace](#ts-module-vs-ts-namespace)
- [References](#references)

# Modules

- ES2015 module (`import a from "./foo"`)
- [TS module](TSModule.md) (`module {}`)
- [TS namespace](TSNamespace.md) (`namespace {}`)

# ES 2015 Module

## Non JS/TS Files

Use [Ambient Modules](TSModule.md)

## Absolute Import

Absolute import does not start with `.` or `..`

```ts
import Foo from 'components/Foo';
import Boo from 'third-party';
```

### TypeScript

`tsconfig.json` contains two settings for enabling non-`node_modules` absolute
imports

```json
{
  "compilerOptions": {
    // Base directory to resolve non-absolute module names.
    // Ex. "components" will be resolved to "src/components"
    "baseUrl": "./src",
    // A series of entries which re-map imports to lookup locations relative
    // to the 'baseUrl'
    "paths": {
      // Ex. "modules/a" will be resolved to "src/modules/a"
      "modules/*": ["src/modules/*"]
    }
  }
}
```

#### `node_modules`

Typescript has two modes of finding modules `classic` and `node`. **TypesScript
uses `classic` by default.**

```json
{
  "compilerOptions": {
    "moduleResolution": "node"
  }
}
```

More details can be found in
[Typescript handbook](https://www.typescriptlang.org/docs/handbook/module-resolution.html#node)

- **if working with modules under `node_modules`, set the value to `node`**

### File Extension

In some environments (browser, node), modules must be imported with their
extensions

```ts
import { boo } from './foo.js';

boo();
```

Given `foo.ts`, TypeScript allows the file to be imported as `foo.js`

# TS Module vs TS Namespace

Similarity:

- Merged across files

Difference:

- TS modules can be used to augment ES6 modules

# References

- [`baseUrl`](https://www.typescriptlang.org/tsconfig#baseUrl)
- [`paths`](https://www.typescriptlang.org/tsconfig#paths)
