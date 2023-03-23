# Browser

JS files can be loaded as modules by using

```html
<script type="module" src="x.js"></script>
```

When js files are loaded as this, import path must have extensions

```js
import { foo } from 'x.js';

foo();
```
