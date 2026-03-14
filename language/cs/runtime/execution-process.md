# Execution Process

1. Compile source to MSIL (Microsoft Intermediate Language)
2. JIT compiler produce assembly code from MSIL at runtime

# JIT

When the assembly is loaded, all functions would create and attach a stub for
each methods. When the code is called for the first time, the stub passes
control to the JIT compiler which would

- Generate native code
- Make the stub points to the native code

Subsequent calls would directly go to native code.

# Applies to

- Mono
- .Net
