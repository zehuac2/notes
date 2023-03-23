# Consumer

```json
{
  "name": "cs419",
  "version-string": "0.1.0",
  "dependencies": ["pngpp"]
}
```

This should be put into a `vcpkg.json` file

- `name` and `version-string` are required properties
- [Versioning](https://devblogs.microsoft.com/cppblog/take-control-of-your-vcpkg-dependencies-with-versioning-support/)

## CMake

`vcpkg.json` needs to be put in the same folder as the root `CMakeLists.txt`

1. Running `cmake <path> -G Ninja -DCMAKE_TOOLCHAIN_FILE=...` will create a
   `vcpkg_installed` directory where the dependencies are installed.
2. Packages can then be used via `find_package` or `find_path` commands

# Author

A library in a vcpkg registry is known as a **port**. A port consists of two
files

- `vcpkg.json`: describes metadata. Ex. name, homepage, dependencies, features
- `portfile.cmake`: describes how to build the port. Ex. download repo, create
  flags from features

# Resources

- [Bring Your Own Libraries](https://devblogs.microsoft.com/cppblog/registries-bring-your-own-libraries-to-vcpkg/)
