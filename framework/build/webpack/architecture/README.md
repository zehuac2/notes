# Concepts

- Webpack's plugin system is built on a library called "tapable"
- Compiler creates dependency graph
- Plugins can subscribe to the compiler's events to add functionalities
  - Everything is a plugin in webpack
  - The compiler instance can be accessed direclty using Node API
- Plugins can also add their own events
- If plugin A depends on plugin B, then plugin A has to be created after plugin
  A

## Worflow

1. Compiler creates a dependency graph
2. Resolver finds the file
3. Module factory creates module object in memory
4. Parser parses a module object and construct AST
   - The AST would be traversed to find imports, from which new modules would be
     created using the same process (2-4)
   - Repeat until all modules are included
5. Template produce the code, add it to the compiler so that it would be present
   in bundles

# API

```ts
class Plugin {
  apply(compiler) {}
}
```

Each plugin should have an apply method that takes the compiler has parameter
