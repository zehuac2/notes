# Shader

GLSL is the language used to write shaders for WebGL

# Precision

```glsl
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif

```

Precisions are qualified using `precision qualifier type`

- `highp`: high precision floating points
  - Available when `GL_FRAGMENT_PRECISION_HIGH` is defined
- `mediump`: medium precision floating points
- `lowp`: low precision floating points

Vertex shader has default precision, fragment shader does not

# `attribute`

```glsl
attribute vec3 position;
attribute vec4 color;

void main(void) {
  gl_Position = vec4(position, 0);
}

```

Attributes are data associated with each vertex

- In WebGL2, `in` would save the same purpose
- When an attribute is **disabled**, it uses a default value, and when it is
  **enabled**, it uses a custom value
- Attributes are disabled by default and must be enabled to be used

## Assignment

To assign values to shader attributes

```glsl
gl.bindBuffer(gl.ARRAY_BUFFER, data);

// get the index of the attribute from the shader program
const coordinate = gl.getAttribLocation(program, "coordinates");
// describe the type, size ... of the attribute
gl.vertexAttribPointer(coordinate, 3, gl.FLOAT, false, 0, 0);
// tell WebGL to use custom data at gl.ARRAY_BUFFER to the attribute
gl.enableVertexAttribArray(coordinate);
// gl.disableVertexAttribArray(coordinate) would disable the attribute

```

# `uniform` (Uniform Qualified Variable)

```glsl
uniform mat4 transformation;

void main(void) {
  // ...
}

```

Uniforms are constants that are **shared between vertex and fragment shader**
and **remains the same across the handling of each vertices and fragments**

## Assignment

Uniforms are set using `gl.uniformX` methods

```glsl
const rotationLocation = gl.getUniformLocation(this.shaderProgram, "uniform");
gl.uniformMatrix4fv(rotationLocation, false, rotationMat4);

```

## `varying`

```glsl
varying vec4 v_color;

void main(void) {
  // ...
}

```

Varying are **shared between the processing of a single vertex and its
corresponding fragment**

# Creating Shaders

```glsl
let shader = gl.createShader();
gl.shaderSource(shader, "");
gl.compile(shader);

```

## Shader Program

Shaders must be included in shader programs to be used

```glsl
let program = gl.createProgram();
gl.attachShader(vertexShader);
gl.attachShader(fragmentShader);

gl.linkProgram(program);

```

- Shader must be compiled before being attached

Shader programs can then be used by webgl

```glsl
gl.useProgram(program);

```

# Variables

- `varying` variables can be shared between vertex functions and fragment
  functions
  - `varying` variables available to fragment functions will be interpolated
    with nearby vertices

# Topics

- [Fragment Shaders](fragment-shader.md)
- [Vertex Shaders](vertex-shader.md)
