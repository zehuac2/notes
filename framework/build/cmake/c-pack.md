# Overview

```cmake
set(CPACK_GENERATOR "ZIP")

include(CPack)
```

CPack creates a package containing all installed contents for consumers. There
are two ways to use cpack

1. Run `cpack` directly
2. `include(CPack)` would cause the build script to contain a `package` target;
   Run `package` target to create the package

# Generators
