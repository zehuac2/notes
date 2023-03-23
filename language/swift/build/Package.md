# Swift Tool Version

```swift
// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
```

# Target

- `executableTarget`
  - One type in the target must be annotated with a `@main` attribute, or
    contains `main.swift` file
- `target`

## Resources

```swift
.executableTarget(
  name: "swift-learn",
  dependencies: [],
  exclude: ["path"]
  resources: [
    .process("Resources")
  ])
```

- `exclude:` excludes files from being considered as resources
- `.process(path)` causes the build system to process the resource; how the
  build system would process the resource is up to the build system
- `.copy(path)` copies contents at path to the build output

```swift
import Foundation

let bundle = Bundle.module
```

- `Bundle.main` points to the folder containing the executable
- `Bundle.module` ponits to the folder containing the resource folder

## C, C++, ObjC Target

- Header files goes under `target/include/` folder
  - `include/` can be a symlink
  - `target/include/target.modulemap` can be used to indicate what headers to
    expose
    - Does not seem to be able to handle out-of-target directories
  - The include directory be configured using `publicHeadersPath:` in
    `.target(...)`
  - To include headers: `#include "paths in target/include/"`
- C, C++, ObjC targets would be able to access each other's public headers

### Module Map

```
module Target {
  umbrella "<path to header>"
  export <files, patterns>
}
```

### Recipe: LLVM Style C++ Components

LLVM's C++ components follow the following structure

- `include/project/component`
- `lib/component`

To work with Swift PM

1. Create target to point to a component in `lib`
   ```swift
   .target(
     name: "component",
     path: "lib/component")
   ```
2. Create folder for headers:
   1. Create `lib/component/include/project` directory
   2. Create a symlink to `include/project/component` in
      `lib/component/include/project` folder

[swift-llbuild](https://github.com/apple/swift-llbuild) is an execellent example
