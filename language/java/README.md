- [Language](#language)
- [Concurrency](#concurrency)
- [Build](#build)
  - [Compile Process](#compile-process)
    - [`jar`](#jar)
    - [Create a Library `.jar`](#create-a-library-jar)
    - [Create an Executable `.jar`](#create-an-executable-jar)
  - [Jar](#jar-1)
  - [JPackage](#jpackage)
  - [JLink](#jlink)
- [JVM](#jvm)
  - [Reduce Startup Time](#reduce-startup-time)

# Language

- [Package](Package.md)
- [String](String.md)
- [Control Flow](control-flow/README.md)
- [Type](type/README.md)
- [Access Modifiers](Access.md)
- [Exceptions](exceptions/README.md)

# Concurrency

- `ThreadLocal<T>`
  - To provides initial value, subclass `ThreadLocal<T>` and override
    `T initialValue()`

# Build

## Compile Process

1. `javac` compiles `.java` files to `.class` files
2. `jar` creates `.jar` files from `.class` files

### `jar`

### Create a Library `.jar`

```
jar --create --file lib.jar A.class B.class
jar --update --file lib.jar A.class B.class
```

### Create an Executable `.jar`

```
jar --create --file lib.jar --manifest Manifest.mf App.class B.class
jar --create --file lib.jar --main-class=App App.class B.class
jar --update --file lib.jar --manifest Manifest.mf App.class B.class
```

Below is an example of a manifest

```
Manifest-Version: 1.0
Main-Class: App
```

## Jar

```java
public class Program {
  public static void main(String[] args) {
    try (InputStream stream = Program.class.getResourceAsStream("/file.txt")) {
      // read stream
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
```

Jars can contain resources that can be retrieved by paths

- To reference resources in `this` jar, use `/path`
- To reference resources not in `this` jar, use `path`
  - TODO: test this

## JPackage

`jpackage` bundle a java runtime image into a self-sustained application that
can run without using JRE

- The runtime image is built using `jlink`

## JLink

JLink creates a runtime image a set of dependencies;

- A runtime image contains a JRE

# JVM

- HotSpot VM by default interprets Java byte code. Functions are JIT compiled
  only after they have been run a few times. There are two compilers
  - Client compiler: compiles fast but compiled code is not as good
  - Server compiler: compiles slow but compiled code is good
  - Tiered compilation: uses client compiler first to generate self-profiling
    code
    - Enable tiered compilation: `-XX:+TieredCompilation`
    - Disable tiered compilation: `-XX:-TieredCompilation`
    - Set tiered compilation level: `-XX:TieredStopAtLevel=1`

## Reduce Startup Time

Set a lower tiered stop level will reduce startup time
