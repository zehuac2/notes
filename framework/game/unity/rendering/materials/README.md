# Concepts

## Tiling

Rather than expand the material onto the object it is attached to, create small
tiles and fill the object's surface with the tiles

- Can be used to create grid line surfaces
- Bigger the tiling values, the smaller the tiles

## Cutout Shader

In cutoff shader, a point on the texture is either 100% opaque or transparent.
This allows you to create transparent effect or objects with holes in them

- Ex. bullet wholes are typically done using a plane, but bullet wholes are
  typically not rectangular.

## Alpha Clipping

If alpha clipping is enabled, then a shader is a cutout shader
