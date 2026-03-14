# Overview

Packages can be consumed using

- **Local**: `find_package`, `find_path`
- **Remote**: `FetchContent`, `ExternalProject`

# Local

## `find_path`

```cmake
find_path(PNGPP_INCLUDE_DIRS "png++/png.hpp" REQUIRED)

add_executable(exe)

target_link_directories(
  exe
  PUBLIC
    "${PNGPP_INCLUDE_DIRS}")
```

`find_path` locates the include directories for a include path. The include path
is path that is `#include` in C++ files.

```cpp
#include "png++/png.hpp"
```

In this case, `PNGPP_INCLUDE_DIRS` can be populated with something like
`/usr/include/`

# Remote

`FetchContent` downloads content at generation time, `ExternalProject` downloads
content at build time

## `FetchContent`

```cmake
include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.10.0)

FetchContent_GetProperties(googletest)

if(NOT googletest_POPULATED)
  # get google test if goole test not added
  FetchContent_Populate(googletest)

  add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR})
endif()
```
