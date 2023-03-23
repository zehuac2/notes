# Overview

- **Big Endian**: the most significant byte is stored is placed in the lowest
  end of the address
- **Small Endian**: the least significant byte is stored is placed in the lowest
  end of the address

# Detection

```cpp
/// @returns true if the executing system is using small endianness
bool is_small_endian() {
  union {
    int value;
    char bytes[sizeof(int)];
  };

  value = 1;

  return bytes[0] == 1;
}
```
