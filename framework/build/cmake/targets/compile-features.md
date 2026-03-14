# Compile Features

Compile features can be added to target using
[`target_compile_features`](https://cmake.org/cmake/help/latest/command/target_compile_features.html#command:target_compile_features)

- C++ compile features can be found at
  [`CMAKE_CXX_KNOWN_FEATURES`](https://cmake.org/cmake/help/latest/prop_gbl/CMAKE_CXX_KNOWN_FEATURES.html#prop_gbl:CMAKE_CXX_KNOWN_FEATURES)
  - Frequently used:
    - `cxx_std_x`: use `x` C++ standard
    - `cxx_noexcept`: disable exception
