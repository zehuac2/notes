# Overview

C++ STL provides path manipulation through `class std::filesystem::path`

# Operations

## Composition/Decomposition

### Append

```cpp
// Gives folder_a/folder_b
path p;
p.append("folder_a");
p /= "folder_b";
```

### Parent Directory

```cpp
path p = /* ... */;
p = p.parent_path();
```
