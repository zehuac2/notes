# Equality

- `toBe`: comparison using `===`
- `toEqual`: deep comparison
- `toStrictEqual`: deep comparison with additional checks
  - Objects must have the same type
  - Elements of undefined value are compared; the following pairs would fail
    ```
    [undefined, 1] vs [1]
    { a: undefined, b: 1 } vs { b: 1 }
    ```
  - Prefer `toStrictEqual` over `toEqual`
