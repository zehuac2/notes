- [Overview](#overview)
- [Creating Build Directory](#creating-build-directory)
- [Building](#building)
- [Testing](#testing)

# Overview

- Create the build directory
- Run build system
- Build files can be created using [presets](Presets.md), which are CMake
  configurations stored as json files

# Creating Build Directory

```
cmake -E make_directory <dir>
```

# Building

CMake project can be built in two ways

- Using CMake
  ```cmake
  cmake --build <dir>
  ```
  CMake will then delegate building to the build system being generated for
- Using the actual build system

# Testing

`ctest` command reduces the need for locating and executing the executable
mannually, especially if the test executables are deep in the build dir

[Testing](Testing.md)
