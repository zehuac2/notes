# Overview

```cmake
include("${CMAKE_CURRENT_LIST_DIR}/FooTargets.cmake")
```

A package is defined by a `NameConfig.cmake` or `Name-config.cmake` file that
import or contain targets.

# Authoring

```cmake
project(Lib)

include(CMakePackageConfigHelpers)

add_library(Foo lib/lib.cc)

target_include_directories(
  Foo
  PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
    "$<INSTALL_INTERFACE:include/>")

set_target_properties(
  Foo
  PROPERTIES
    PUBLIC_HEADER include/lib.h)

configure_package_config_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  "${CMAKE_CURRENT_BINARY_DIR}/FooConfig.cmake"
  INSTALL_DESTINATION cmake/)

install(
  FILES
    "${CMAKE_CURRENT_BINARY_DIR}/FooConfig.cmake"
  DESTINATION cmake/)

install(
  TARGETS Foo
  EXPORT FooTargets)

install(
  EXPORT FooTargets
  FILE FooTargets.cmake
  DESTINATION cmake/)

set(CPACK_GENERATOR "ZIP")

include(CPack)
```

- `configure_package_config_file` reads a hand-written configuration file and
  populate contents
- `install(FILES _)` copies the generated config file
- `install(TARGETS _ EXPORT _)` export a target
- `install(EXPORT _ FILE _)` export a exported target to a cmake file. The e
  exported target would be later referenced by the package file

A hand-written, aka. input configuration file should contain the following

```
@PACKAGE_INIT@

include("${CMAKE_CURRENT_LIST_DIR}/FooTargets.cmake")
```

CMake would populate the contents of `@PACKAGE_INIT@`

# Consuming

```cmake
find_package(Foo)

add_executable(main main.cc)

target_link_libraries(main PRIVATE Foo)
```

- A package can be obtained in `CMAKE_PREFIX_PATH` referenced using
  `find_package`
- The package can then be linked using `target_link_libraries`. Include
  directories would be automatically added

# Resources

[Importing and Exporting Guide](https://cmake.org/cmake/help/git-stage/guide/importing-exporting/index.html#creating-relocatable-packages)
