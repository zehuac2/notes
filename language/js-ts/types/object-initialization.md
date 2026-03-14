# Basic

```ts
let object = {
  property: value,
};
```

# Short Hands

## Property

```ts
let property = '';
let object = { property };
```

## Methods

```ts
let object = {
  foo() {
    console.log(this);
  },
  boo: function () {
    console.log(this);
  },
};
```

`boo` and `foo` are equivalent

- Note that methods are still properties
