# References

## Local References

```cs
ref int r = ref source;
r = ref anotherSource;
```

- The local reference must have `ref` keyword
- A local reference can point to more than one object
- The source (variable or function) must be prefixed with a `ref`
  - Otherwise, it is a copy
