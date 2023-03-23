# JSX

## Pragmas

JSX pragmas enables the use of custom functions to be used when transforming JSX
syntax

```tsx
/** @jsx expression */
// @jsx expression
import { expression } from 'xxx';

function Foo() {
  return <div>Hello world!</div>;
}
```

Normally, `React.createElement` would be used to create element from JSX block,
but with the pragma, `expression` would be used
