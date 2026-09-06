# Fragment Functions

# Overview

```cpp
[[fragment]]
float4 fragment_func(vertex_output output [[stage_in]]) {

}

```

Metal's fragment shader runs per-fragment, unless the return type or the
parameters contains attributes that are only available when run per-vertex.

# Parameters

- **Vertex Output**: vertex output can be retrieved using
  `vertex_output output [[stage_in]]`. The content of `vertex_output` will be
  interpolated between neighboring vertices

# Return

Must return a `float4` with each component in range `[0, 1]`
