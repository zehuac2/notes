# Macros

# Versions

```cpp
#ifndef __METAL_VERSION__
// Put content that is not allowed in Metal shader here
#endif

```

Metal compiler would define `__METAL_VERSION__` automatically to the version
being used

## Platform Detection

If the macro is not defined, then compilation unit the header is currently in is
not a Metal shader file

# macOS, iOS

Metal compiler would also define macros depending on which Apple platform is
being targeted

```cpp
#ifdef __METAL_MACOS__
#endif

#ifdef __METAL_IOS__
#endif

```
