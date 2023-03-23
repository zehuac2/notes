# Build Type

The variable, `CMAKE_BUILD_TYPE`, controls the build type

- By default this value is empty, making the build neither debug nor release
- If the value is `Release`: cmake would add optimization flags
- If the value is `Debug`: cmake would add debug flags

`CMAKE_CXX_FLAGS_DEBUG` and `CMAKE_CXX_FLAGS_RELEASE` contains the flags used
for debug adn release builds for C++. Similar variables exist for other
languages.

# Conditional Linking

```cmake
target_link_libraries(
  main
  PUBLIC
    debug debug
    optimized optimized)
```

`main` will be linked with

- `debug` when building for debugging
- `optimized` when building for optimization
