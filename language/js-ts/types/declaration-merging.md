# Declaration Merging

This feature is unique to type script

- All declarations (namespace, module, class, ...) with the same name can be
  merged
  - **Exceptions**:
    - Classes cannot be merged with classes and with values; can be mimicked
      using mixins
    - Values cannot be merged with values
- **Order of declaration**:
  - Class must be put before namespace that it merge with
- **Uses**:
  - Augmentation
  - Nested type
  - Enum static methods
  - Extend existing interfaces (useful in frontend)
  - Adding properties to functions

## Examples

```ts
class TimeStamp {
  time?: TimeStamp.Time;
}

namespace TimeStamp {
  export class Time {}
}
```
