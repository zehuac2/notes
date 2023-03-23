# Subdirectory

```cmake
add_subdirectory(source_dir [binary_dir])
```

- `source_dir` should contains the `CMakeLists.txt` file and
  source/resource/header files.
- `binary_dir` would be populated with compiled artifacts. By default,
  `binary_dir` would have the same value as `source_dir`
