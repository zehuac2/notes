# Migrate Shaders to Universal Render Pipeline

To make an existing shader compatible with the universal render pipeline, there
are two options

1. Shader graph (only works with the scriptable render pipelines)
2. Coded shaders (works with both)

## Coded Shader Migration Guide

1. Create a new sub shader
2. In the `Tags` section, add `"RenderPipeline"=UniversalPipeline"`
3. In the `Pass>Tags`, change everything `"ForwardBase"` to `"UniversalForward"`

This approaches might not solve SRB bacher compatibility issues
