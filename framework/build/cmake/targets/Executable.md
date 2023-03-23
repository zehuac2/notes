# Overview

```cmake
add_executable(foo main.cc)
```

Executables are added using `add_executable`

# Mac Application Bundle

```cmake
add_executable(Application MACOSX_BUNDLE main.cc)
```

This is equivalent to

```cmake
add_executable(Application main.cc)

set_target_properties(Application PROPERTIES
  MACOSX_BUNDLE TRUE)
```

The bundle can be further customized configured by either providing an
`Info.plist` or setting properties individually

- `MACOSX_BUNDLE_INFO_PLIST`
- [Properties](https://cmake.org/cmake/help/latest/prop_tgt/MACOSX_BUNDLE_INFO_PLIST.html#prop_tgt:MACOSX_BUNDLE_INFO_PLIST)

## Resources

```cmake
add_executable(Application MACOSX_BUNDLE main.cc Resource.txt)

set_target_properties(Application PROPERTIES
  RESOURCE Resource.txt)
```

Setting `RESOURCES` property of an bundle would mark files of a bundle as
resources, therefore putting them into the `Resources` folder.

## Code Signing

Code signing should be done separately using `codesign` command line tool.
