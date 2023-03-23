# Author

```json
{
  "features": {
    "name": {
      "description": "required",
      "dependencies": ["gtest"]
    }
  }
}
```

## CMake

```cmake
list(APPEND VCPKG_MANIFEST_FEATURES name)

project(Foo)
```
