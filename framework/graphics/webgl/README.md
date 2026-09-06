# WebGL

1. Obtaining context
2. Create shader, vertex data
3. Configure Rendering
4. Rendering
5. Request next frame

## Obtaining GL Context

All WebGL operations requires some kind of context to run. GL Context can be
obtained from `<canvas>` elements

```glsl
let canvas = document.getElementById("canvas");

if (!canvas) {
  alert("canvas is not found");
  throw new Error("canvas is not found");
}

if (!(canvas instanceof HTMLCanvasElement)) {
  throw new Error("canvas is not of HTMLCanvasElement");
}

const gl = canvas.getContext("webgl");

```

## Configure Rendering

### Depth Test

Depth test performs hidden surface removal; can be toggled using

```glsl
gl.enable(gl.DEPTH_TEST);
gl.disable(gl.DEPTH_TEST);

```

Before rendering begin, reset depth buffer

```glsl
gl.clear(gl.DEPTH_BUFFER_BIT);

```

- Depth buffer default value can be set using Default value is `1`

  ```glsl
  gl.clearDepth(depth);

  ```

- Depth function can be configured using Default value is `gl.LESS`. This means
  that with default values, vertices with `z=1` would not be drawn

  ```glsl
  gl.depthFunc(func);

  ```

### Background Color

Background color (aka. clear color) can be configured using; **note that this
does not set background color**

```glsl
// set a color preset
gl.clearColor(...);

```

Before rendering begin, colors are cleared using

```glsl
// revert to color preset
// this actually set the background color
gl.clear(gl.COLOR_BUFFER_BIT);

```

### Viewport

Where in the `<canvas />` to draw

```glsl
gl.viewport(x, y, width, height);

```

## Rendering

```glsl
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, indices);
gl.drawElements(gl.TRIANGLES, 3, gl.UNSIGNED_SHORT, 0);

```

`gl.drawElements` issues the draw call

- Vertex data should be passed using shaders
- Indices data are taken from `gl.ELEMENT_ARRAY_BUFFER`. WebGL would use the
  indices and the vertices processed by the shader program to form shapes

## Request Next Frame

```glsl
requestAnimationFrame(draw);

```

Request animtion frame registers a callback to the browser. The callback would
be used produce the next frame

The callback would be call with a number as a parameter that represent **the
current timestamp in milliseconds**

# Clip Space

WebGL is left handed, this means that `z=-1` would be closer to the user and
therefore `z=-1` would cover `z=1`

- `x`: `[-1, 1]`
- `y`: `[-1, 1]`
- `z`: `[-1, 1]`
  - `1` is the closest to the user

# APIs

## `drawElements`

```glsl
declare class WebGLRenderingContext {
  drawElements(mode: number, count: number, type: number, offset: number): void;
}

```

## Parameters

- `mode`: what to draw
  - `gl.TRIANGLES`
- `count`: how many elements to be drawn
  - When using `gl.TRIANGLES` as mode, elements refer to vertices
  - Size of each vertex is up dependent on `mode`
- `type`: type of elements in element array buffer
  - `gl.UNSIGNED_BYTE`: 1 byte
  - `gl.UNSIGNED_SHORT`: 2 byte

# Resources

- [WebGL Fundamentals](https://webglfundamentals.org/)

# Topics

- [Shaders](shader/README.md)
