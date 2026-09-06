# Fragment Shader

Fragment shader outputs

- `gl_FragColor`: color of the current vertex (known as the fragment in this
  stage)

```glsl
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif

varying vec4 v_color;

void main() {
  gl_FragColor = v_color;
}

```
