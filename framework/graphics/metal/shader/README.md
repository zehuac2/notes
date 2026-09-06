# Shader

# Overview

- Based on C++14 syntax
  - No C++ STL allowed
- [Macros](macros.md)
- [Address Space](address-space.md)

# Attributes

```cpp
vertex void foo(constant buffer *buffer [[buffer(BUFFER_INDEX)]]) {
}

```

- `[[stage_in]]`: vertex or fragment shader argument
  - **Fragment shader**: mark the output of vertex shader
- `[[vertex_id]]`: ushort or uint to indicate the vertex index.
- `[[attribute(index)]]`: attribute mapping
- `[[buffer(index)]]`: it specifies the buffer locations for the function
  arguments. A vertex function can read per-vertex inputs by indexing into a
  buffer(s) passed as arguments to the vertex function using the vertex and
  instance IDs.
- `[[texture(index)]]`: Textures (including texture buffers).
- `[[sampler(index)]]`: Samples that define how to access texture data.
- `[[threadpositionin_grid]]`: The position of the thread in the grid.

# Building

## Command Line

```cpp
xcrun -sdk macosx metal -c MyLibrary.metal -o MyLibrary.air
xcrun -sdk macosx metallib MyLibrary.air -o MyLibrary.metallib

```

- `metal`: compiles `.metal` files into `.air` files (intermediate
  representation of Metal shaders)
- `metal-ar`: archives several `.air` files into an `.metalar` file
- `metallib`: build `.air`, `.metalar` files into a `.metallib` file (Metal
  Library loaded at runtime)

[Source](https://developer.apple.com/documentation/metal/libraries/building_a_library_with_metal_s_command-line_tools)

# Topics

- [Address Spaces](address-space.md)
- [Constants](constants.md)
- [Fragment Functions](fragment-functions.md)
- [Macros](macros.md)
- [Vertex Functions](vertex-function.md)
