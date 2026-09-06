# DirectX

# Naming Convention

- Types all prefixed with `D<FRAMEWORK>DX<VERSION>`
  - `FRAMEWORK`:
    - 3 for Direct3D
    - 2 for Direct2D, DirectWrite
  - `VERSION`: ex. `12` for APIs that are **new to DirectX 12**
- Descriptor structs are named using all caps, following the mentioned prefix
- Classes are named using camel casing, following the mentioned prefix

# C++ Helper Classes

For some C-structs in DirectX, like `D3DX12_RASTERIZER_DESC`, there is a
companion C++ type like `CD3DX12_RASTERIZER_DESC` that can initialize the struct
to default values (using tag types, like `CD3DX12_DEFAULT`, `D3D12_DEFAULT`)
