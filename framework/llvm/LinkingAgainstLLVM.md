# CMake

## Locating LLVM

### `find_package`

Set `CMAKE_PREFIX_PATH` to where LLVM binaries are downloaded

```cmake
set(CMAKE_PREFIX_PATH "${LLVM_PATH}/lib/cmake/")

find_package(LLVM)
find_package(Clang)
```

CMake's `find_package` command should provide constants that would assist later
steps.

## Linking Against LLVM

LLVM's cmake config files export library targets that can be linked using
`target_link_libraries` directly.

Since LLVM does not use C++'s RTTI, make sure to disable the feature (clang
`-fno-rtti`).

## Include Headers

As of LLVM 8, LLVM's library targets do not seem to have include directories
associated with them. Therefore, include paths needs to be manually specified
through constants provided by `find_package` command

```cmake
target_include_directories(
    classer
    PUBLIC
        ${CLANG_INCLUDE_DIRS})
```

At least when LLVM 8 is downloaded as prebuilt binaries, `${CLANG_INCLUDE_DIRS}`
contains both clang and llvm's headers.
