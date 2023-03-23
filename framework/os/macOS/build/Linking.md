# Universal Binaries

```
lipo -create -output universal_app x86_app arm_app
```

Universal binaries are created using `lipo`

- To view architectures of a binary, use `lipo -archs binary`
