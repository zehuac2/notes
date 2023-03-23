# Overview

Platform detections can be done at compile-time using macros

- Apple Platforms: `__APPLE__`
- Windows:
  - `_WIN32`: x86, x64, 32-bit ARM, 64-bit ARM
  - `_WIN64`: x64, 64-bit ARM
- Linux: `__linux__`
- Android: `__ANDROID__`

# Resources

- [MSVC Default Macros](https://docs.microsoft.com/en-us/cpp/preprocessor/predefined-macros?view=msvc-160)
- [Guide to predefined macros in C++ compilers](https://blog.kowalczyk.info/article/j/guide-to-predefined-macros-in-c-compilers-gcc-clang-msvc-etc..html)
