# Types of Targets

- `::` in target names means a target is `ALIAS` or `IMPORTED`
  - In older version of CMake, some generators will targets with names
    containing `::` as actual link targets. When using cmake later than 2.8.12,
    to avoid linker errors, either `cmake_minimum_required` is set to a version
    later than `2.8.12` or
    [CMP0028](https://cmake.org/cmake/help/latest/policy/CMP0028.html) must be
    disabled so that targets with `::` in names are treated as imported targets

## Imported Target

[TODO:](https://stackoverflow.com/questions/33165270/force-cmake-to-use-the-full-library-path)

# Targets Properties

## Target Sources

```cmake
target_sources(
  foo
  PRIVATE
    foo.h)
```

`target_sources` add non-source files to a targe,t so that they will show up in
IDEs.

- `PUBLIC`, `INTERFACE` will add the target's files to whoever that depends on
  the target
- `PRIVATE` will keep the target's files to itself
- `target_sources` can also add source files, in addition to using
  `add_executable(target, sources)` and `add_library(target, sources)`

## Output Name

```cmake
set_target_properties(
  foo
  PROPERTIES
    OUTPUT_NAME Foo)
```

Output name of a target controls the file name of the product of a target

- Library's output names will be prefixed by `lib` on posix platforms
