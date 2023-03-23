- [Overview](#overview)
- [Change Detection](#change-detection)
- [`async`](#async)

# Overview

```ts
import { Pipe, PipeTransform } from "@angular/core";

@Pipe({
  name: "arraysEqual",
  pure: false,
})
export class ArrayEqual implements PipeTransform {
  transform<T>([arrayA, arrayB]: [
    T[] | undefined | null,
    T[] | undefined | null
  ]): boolean {
    // both null or both undefined
    if (arrayA === arrayB) {
      return true;
    }

    // either not array
    if (!Array.isArray(arrayA) || !Array.isArray(arrayB)) {
      return false;
    }

    if (arrayA.length !== arrayB.length) {
      return false;
    }

    for (let i = 0; i < arrayA.length; i++) {
      if (arrayA[i] !== arrayB[i]) {
        return false;
      }
    }

    return true;
  }
}
```

- Pipes are referenced by `name`

# Change Detection

By default, angular pipes only detect pure changes to a pipe, i.e. if
`x1 !== x2` then `x2` has changed from `x1`. This improves performance as pipes
don't have to run each update

- To update with changes in composite objects (like array), set `pure` to
  `false`

# `async`

```html
{{ source$ | async }}
```

The async pipe retrieve value from an observable. The subscription will be
canceled automatically
