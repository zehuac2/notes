# `let name = expression`

Create an alias to an expression

- The alias is evaluated on demand
- The **alias is scoped**
  - Local alias does not overwrite global symbols
  - When the program goes out of scope, the alias is no longer available
