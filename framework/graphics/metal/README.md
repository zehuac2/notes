# Metal

# Overview

## Workflow

1. Get access to a device
2. Create a command queue from the device
3. Make command buffers from the command queue
4. Use command encoder to edit command buffers; end encoding when you are done
5. Commit command buffers for rendering

## Device

```swift
protocol MTLDevice {}
```

The abstraction over GPU, serving as the primary interface for Metal

- Metal devices are used to
  - Query features of the GPU
  - Create Metal objects;
- Metal objects created from devices are expensive, but reusable
  - Do not have to be created for every render
- Metal objects created from one device can only be used with that device; To
  create a system default device, use `MTLCreateSystemDefaultDevice()`;

## Command Queue

```swift
protocol MTLCommandQueue {}

```

- The abstraction of a command queue that manages a list of command buffers for
  a metal device to execute
- Command queues are thread-safe and allow multiple command buffers to be
  encoded simultaneously
- **Typically you create command queues at the beginning of the lifetime of your
  app and use them throughout the app**
- Command queues are created using the metal device
  - To create a command queue, use `makeCommandQueue()` or
    `makeCommandQueue(maxCommandBufferCount:)` method on `MTLDevice`
  - To perform rendering, create command buffers using `makeCommandBuffer()` or
    `makeCommandBufferWithUnretainedReferences()` methods; the command queue
    needs to be alive until the command buffer have finished executing;

## Command Buffers

```swift
protocol MTLCommandBuffer {}

```

- The container that store encoded commands that are sent to the GPU
- Command buffer are created by the `MTLCommandQueue` and can be committed only
  to the queue from which it is created; - Create command buffer using
  `makeCommandBuffer()` method of `MTLCommandQueue`
- The queue manages the order in which the command buffers are committed , and
  the buffers are guaranteed to be executed in the order
- For a command buffer to be executed by a GPU:
  - Call `present(_:)` method to tell Metal to wait for the GPU to execute the
    command buffer, before presenting the frame to the screen
  - Call `commit()` method, which tells the command queue that a command is
    ready to be handed over to the GPU;

### Command Buffer Encoder

```swift
protocol MTLCommandEncoder {}

```

A protocol abstracting an encoder that encodes GPU commands into a command
buffer

- Command buffer encoders are created by command buffers
  `makeRenderCommandEncoder(descriptor:)`
  - Command encoders needs to be created with a descriptor, which describes the
    encoder that you are creating
  - When a encoder is created, a clear command is encoded by default;
- Only one single encoder can be active for one command buffer;
- Once you are finished, call `endEncoding()` method to end encoding. To append
  more commands, create another command encoder;

### Different Encoders

Different encoders are available for different types of tasks

- Render: `MTLRenderCommandEncoder`
- Compute: `MTLComputeCommandEncoder`
- Memory Management: `MTLBlitCommandEncoder`
- Parallel Render: `MTLParallelRenderCommandEncoder`

## Debugging

For debugging, call `insertDebugSignpost(_:)`, `pushDebugGroup(_:)`, and
`popDebugGroup()` to insert debug strings, push and pop string labels used to
identify group of encoded commands. These strings are used by Xcode to provide
more insights into the rendering process;

# Coordinate System

https://metashapes.com/blog/opengl-metal-projection-matrix-problem/

Metal use **left handed** coordinate system

- `x, y`: `[-1, 1]`
- `z`: `[0, 1]`; `0` is closest to the user

# Depth Test

[Calculating Primitive Visibility using Depth Testing](https://developer.apple.com/documentation/metal/calculating_primitive_visibility_using_depth_testing)

# Support Libraries

- [MetalKit](metal-kit.md)
- [Model IO](../model-io/README.md)

# Resources

- [Build GPU binaries with Metal](https://developer.apple.com/videos/play/wwdc2020/10615/)

[Modern Rendering with Metal - WWDC19 - Videos - Apple Developer](https://developer.apple.com/videos/play/wwdc2019/601)

# Topics

- [Metal Shading Language](shader/README.md)
