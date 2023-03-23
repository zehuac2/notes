# `readonly`

```ts
interface Props {
  readonly title: string;
  friends: readonly string[];
  readonly closeFriends: readonly string[];
}

let p: Props = { title: '', friends: [], closeFriends: [] };

class Foo {
  readonly value: number;

  constructor() {
    this.value = 0;
  }
}
```

- **Appearing before names**: prevent the property from being assigned to
- **Appearing before types**: prevent the property from being modified in-place
  - Only works with arrays or tuples

# `Readonly<T>`

```ts
interface Props {
  readonly others: Readonly<Other>;
}
```

Same as `readonly` before types, but for objects
