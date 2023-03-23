# Add Tests

To enable testing for "this" dictory and all directory below

```cmake
enable_testing()
```

To add a test

```cmake
add_executable(test test.cc)
add_test(NAME test COMMAND test)
```

To run the test

```
ninja test
```

or

```
ctest
```

## Google Test

- `gtest_add_tests` scan source codes for tests
  - **Trigger cmake regenerate every time file changes**
- `gtest_discover_tests` query compiled executable for tests
  - **Does not trigger cmake regenerate every time file changes**

# Running Tests

Testing can be run using

- `x test`
- `ctest` in the build

## Configuration

### Output Failure Messages

```
ctest --output-on-failure
```

```cmake
project(Test)

enable_testing()

list(APPEND CMAKE_CTEST_ARGUMENTS "--output-on-failure")
```
