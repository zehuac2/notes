# Symbol

Symbols are identifiers for properties of an object and can be used to access
properties in objects using the syntax `obj[symb] = value`

- `symbol` is one of the primitive types
- The `Symbol` **function** contains static properties for common properties
- The `Symbol` function is an incomplete constructor and cannot be used with
  `new Symbol`
- Properties assigned using symbols can be printed in console, but will not show
  up when hte object is converted to string

## Global Symbol Registries

- Each call to the `Symbol` function returns a unique symbol The returned symbol
  is not available globally
- To create symbols available for global usage, use `Symbol.for(key)`
  - Calls with the same key would return the same symbol
- To read the key of a symbol, use `Symbol.keyFor(symbol)`
  - Well known symbols (those as static properties) are not registered in the
    global symbol registries
