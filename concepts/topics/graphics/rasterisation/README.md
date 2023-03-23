- [Virtualized Geometry](#virtualized-geometry)
- [Lighting](#lighting)
  - [SSGI (Screen Space Global Illumination)](#ssgi-screen-space-global-illumination)
  - [RTGI (Ray Traced Global Illumination)](#rtgi-ray-traced-global-illumination)

# Virtualized Geometry

[A Deep Dive into Nanite Virtualized Geometry](https://youtu.be/eviSykqSUUw)

- Break triangles into groups
- Generate LOD for each group
- Use software rasteriser for tiny trignales and hardware rasteriser for big
  triangles

# Lighting

## SSGI (Screen Space Global Illumination)

Only includes lights in screen space during global illumination computation

## RTGI (Ray Traced Global Illumination)
