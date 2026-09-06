# ModelIO

# Overview

`ModelIO` provides tools to load and process models/scenes

- [Mesh](../../../concepts/topics/graphics/model/README.md)
- `MDLAsset`: asset loaded retrieved from a url (ex. `.obj`, `.usd`)
  - Allocators
  - Descriptors
  - Import, export
  - Children (`MDLObject`)
  - URL
- `MDObject`: entities in an asset; can be recursive
  - Name
  - Components (ex. behaviors, transforms)
  - Transform
  - Bounding box
  - Parent
  - Children (`MDLObject`)
  - Variants: `MDLMesh`, `MDLLight`, `MDLCamera`
- `MDLLight`
- `MDLCamera`
- `MDLMaterial`
  - Name
  - Properties
  - Scattering Function (ex. blinn-phong, physically-based)
  - Base Material

# File Formats

[Asset File Types](https://developer.apple.com/documentation/modelio/mdlasset/asset_file_types)

# Using With Metal

## Vertex Data

### Layout

- Stride information should be obtained using `stride` property of
  `MDLVertexAttributeData`; `SIMD4<T>`, `SIMD3<T>` maybe of wrong sizes

# Loading

```swift
public class Cube {
  public static let assetName: String = "Cube"

  public let allocator: MTKMeshBufferAllocator
  public let asset: MDLAsset

  public let vertexCount: Int
  public let positions: MTKMeshBuffer

  public let indices: MTKMeshBuffer
  public let indexCount: Int
  public let indexType: MTLIndexType

  public init?(bundle: Bundle, device: MTLDevice) {
    guard let url = Bundle.main.url(forResource: Cube.assetName, withExtension: "usda") else {
      return nil
    }

    allocator = MTKMeshBufferAllocator(device: device)
    asset = MDLAsset(url: url, vertexDescriptor: nil, bufferAllocator: allocator)

    let root = asset.object(at: 0)
    let mesh = root.children.objects[0] as! MDLMesh

    guard let positionAttribute = mesh.vertexDescriptor.attributeNamed("position") else {
      return nil
    }

    positions = mesh.vertexBuffers[positionAttribute.bufferIndex] as! MTKMeshBuffer
    positions.name = "positions"

    vertexCount = mesh.vertexCount

    guard mesh.submeshes!.count == 1 else {
      fatalError("Cube has more than one submesh!")
    }

    let submesh = mesh.submeshes!.object(at: 0) as! MDLSubmesh

    indices = submesh.indexBuffer as! MTKMeshBuffer
    indexCount = submesh.indexCount
    indexType = MTLIndexType(submesh.indexType)
  }
}

```

- No vertex descriptor is needed

# Mesh

## Overall

- Vertex data is stored as a part of `MDLMesh`
  - Vertex metadata can be retrieved using
    1. `MDLVertexDescriptor`
    2. `MDLVertexAttribute`
    3. `MDLVertexAttributeData`
- Index data is stored as a part of `MDLSubmesh`
- Data are stored using `protocol MDLMeshBuffer`
  - If an asset is loaded using `MTKMeshBufferAllocator`, then data is stored
    using `class MTKMeshBuffer`
- **Helpers**
  - Generators
  - Modifiers (ex. create normals)
  - Bakers
- **Operations**
  - Normal smoothing
  - Subdivision

## Vertex

- `MDLVertexDescriptor` contains attributes
  - Name
  - Attributes
  - Layout
- Common names of vertex attributes are stored in globals like
  `MDLVertexAttributePosition`
- `MDLVertexAttributeData`
  - Obtained using `MDLMesh.vertexAttributeData`
  - Contains
    - `stride`

## Index

- `MDLSubmesh`
  - Name
  - Index buffer
  - Geometry type
  - Material (`MDLMaterial`)
