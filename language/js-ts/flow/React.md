# React with Flow

- Default export exposes all the "values" of `react`; not types
- Types must be imported with either namespace or named import

```js
import * as React from 'react';
import { Node } from 'react';
```

## Global Types

```jsx
function Header(): React$Node {
  return <div></div>;
}
```

- React exposes global types with the pattern `React$Type`
