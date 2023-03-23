- [Tuples](#tuples)
- [Named Tuple](#named-tuple)

# Tuples

- Tuples are
  - **Readonly**
  - **Hashable**
  - **Equitable**
  - **Unpackable**

# Named Tuple

```py
from typing import NamedTuple

class Point(NamedTuple)
  x: int
  y: int
  z: int = 1

  def set_x(self, x: int) -> "Point":
    return Point(x, self.y)

print(Point(1, 2))
print(Point(x=1, y=2))

x, y = Point(1, 2)
```

- **Named tuple drive from unnamed tuples**
- Elements of named tuple can be accessed using names
- Fields with default values must come in the end
