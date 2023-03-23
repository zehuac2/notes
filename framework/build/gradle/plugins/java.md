# `java` Plugin

```gradle
plugins {
  id 'java'
}
```

The java adds the ability to compile and build java projects; the following
tasks are added specifically

- `jar`

## `jar`

```gradle
jar {
  manifest {
    // manifest
  }
}
```

- To produce an executable jar, add `attributes "Main-Class": "Program"`
