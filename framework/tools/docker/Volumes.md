# Bind Volume

Volume can be bound to a container using

```
docker run -v <absolute path in host>:<absolute path in container> <container>
```

- If `pwd` is available, use `$(pwd)/<some relativep path>` as the path in host
