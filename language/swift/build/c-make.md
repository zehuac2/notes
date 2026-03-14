# CMake

```cmake
project(Foo LANGUAGES Swift)

add_executable(foo main.swift Person.swift)
```

Building Swift with CMake is the same as building C++ with CMake, except Swift
support must be turned on using the `project()` command.
