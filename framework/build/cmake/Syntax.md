# Function

```cmake
function(name parameter1 parameter2)
endfunction()
```

## Parameters

```cmake
function(add_test_executable executable)
  set(PREFIX, "TEST")
  cmake_parse_arguments(PARSE_ARGV 1 "${PREFIX}" "${OPTIONS}" "" "SOURCES")

  add_executable("${executable}" "${${PREFIX}_SOURCES}")

  target_link_libraries(
    "${executable}"
    PUBLIC
      threadpool)

  add_test(NAME "${executable}" COMMAND "${executable}")

  if(CMAKE_BUILD_TYPE STREQUAL "Debug" AND (NOT DEFINED WIN32))
    target_compile_options(
      "${executable}"
      PUBLIC
        "-fsanitize=thread")

    target_link_options(
      "${executable}"
      PUBLIC
        "-fsanitize=thread")
  endif()
endfunction()

add_test_executable(
  test_job_group
  SOURCES
    test_job_group.cc)

add_test_executable(
  test_platform_thread_pool
  SOURCES
    test_platform_thread_pool.cc)
```
