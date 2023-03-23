# Cinemachine

## Virtual Camera

- A virtual camera should never be nested under another virtual camera. A nested
  virtual camera will never be able to connect to Unity cameras

# Performance

- Every call to `Camera.main` would perform a find of camera in the scene
  - Either cache or create a system to manages cameras
