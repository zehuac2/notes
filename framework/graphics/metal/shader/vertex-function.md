# Vertex Function

# Overview

```cpp
[[vertex]] vertex_output vertex_func() {
  return vertex_output{};
}

```

Vertex functions are used to process vertices before **rasterization**

- Vertex functions must be marked with `[[vertex]]`

# Input

```cpp
struct vertex_data {
  float3 position [[attribute(0)]];
  float3 normal [[attribute(1)]];
};

```

```cpp
let vertexDesc = MTLVertexDescriptor()

let positionAttr = MTLVertexAttributeDescriptor()
positionAttr.format = .float3
positionAttr.bufferIndex = 0
positionAttr.offset = 0

let normalAttr = MTLVertexAttributeDescriptor()
normalAttr.format = .float3
normalAttr.bufferIndex = 1
normalAttr.offset = 0

vertexDesc.attributes[0] = positionAttr
vertexDesc.attributes[1] = normalAttr

vertexDesc.layouts[0].stride = MemoryLayout<SIMD3<Float32>>.stride
vertexDesc.layouts[1].stride = MemoryLayout<SIMD3<Float32>>.stride

```

- `[[attribute(index)]]` and `MTLVertexDescriptor` tell Metal how to populate
  the fields of the type of per-vertex data (in this case, `struct vertex_data`)
- Abstracts away inter-leaved or non-inter-leaved data representation

# Output

Output of vertex functions has to be one of the following

- `void`, only if rasterization is disabled
- `float4`
- A custom type that has one field of type `float4` marked using the `position`
  attribute;

  ```cpp
  struct vertex_output {
    float4 position [[position]];
  };

  ```
