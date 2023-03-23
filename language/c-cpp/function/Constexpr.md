# Overview

```cpp
constexpr int hash(const char *input) {
  int sum = 0;

  while (*input) {
    sum += *input;
    input++;
  }

  return sum;
}

int main() {
  return hash("hello constexpr");
}
```

`constexpr` functions can be executed at compile time

- Only recursion can be used
- In C++14 and above, loops and local variables can be used
