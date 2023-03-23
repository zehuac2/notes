# Overload

```py
from typing import overload, Union

@overload
def foo(value: int) -> int: ...
@overload
def foo(value: str) -> str: ...

def foo(value: Union[int, str]) -> [int, str]:
  # implementation
```

- Overloading declarations must be marked with `@overload`
- There must be one implementation function after the declarations
