# Precompiled Header

```cmake
target_precompile_headers(
  target
  PRIVATE
    lib/tracer/pch.h)
```

Consumers to library targets should control precompiling headers: avoid using
public or interface scope or use generator expression so that precompiled
headers are not exported

```cmake
target_precompile_headers(<target> REUSE_FROM <other_target>)
```

Would use another target's pch. A target either have its own pch or reuse
others, not both.
