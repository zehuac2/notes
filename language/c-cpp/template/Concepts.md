- [Constraints](#constraints)
  - [Atomic Constraints](#atomic-constraints)
    - [Compile Time Constants](#compile-time-constants)
    - [`requires`](#requires)
  - [Conjunction](#conjunction)
  - [Disjunction](#disjunction)
- [Concepts](#concepts)

# Constraints

## Atomic Constraints

### Compile Time Constants

```cpp
template <typename T>
concept some_concept = std::is_floating_point_v<T>
```

### `requires`

```cpp
template <typename T>
concept some_concept = requires {
  std::is_floating_point_v<T>;
  std::is_move_assignable_v<T>;
  // require sequence...
}

template <typename T>
concept some_concept = requires(T t) {
  // simple requirement
  t + t
  // type requirement
  typename T::inner;
  typename Metadata<T>;
  // compound requirement
  { t() } noexcept -> some_other_concept;
  { t.foo() } -> some_other_concept;
  // nested requirement
  requires constraint_expression;
  // require sequence...
}
```

- `requires(T t)` can be used against the instances of a templated type

## Conjunction

```cpp
template <typename T>
concept some_concept =
    std::is_floating_point_v<T> && std::is_move_assignable_v<T>;
```

## Disjunction

```cpp
template <typename T>
concept some_concept =
    std::is_floating_point_v<T> || std::is_move_assignable_v<T>;
```

# Concepts

```cpp
template<...>
concept name = constraint expression;

template<name T>
void foo() {}

template<typename T>
requires name<T>
void foo() {}

template<typename T>
void foo() requires name<T> {}

template<typename T>
requires constraint_expression
void foo() {}
```

- `#include <concepts>` provides common concepts
- STL's concepts uses `snake_case` naming convention
