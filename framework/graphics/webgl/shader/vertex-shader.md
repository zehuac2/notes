# Vertex Shader

```glsl
attribute vec3 position;

void main(void) {
  gl_Position = vec4(position, 1.0);
}

```

Vertex shader outputs

- `gl_Position`: a `vec4` that has the processed position of a vertex
