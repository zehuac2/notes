# Package

- A package consists of multiple classes
- Packages are **decoupled from jar files**; a package can be split across jar
  files
- A file can only belong to one package

## Package and Directories

- Package structure should match that of folders
  - Not required by gradle

## Static Import

```java
import static java.lang.System.out;

public class Program {
  public static void main(String[] args) {
    out.println("main()");
  }
}
```

Static imports allows the use of static properties and methods without using the
class name;

- `import static package.Class.symbol`: would allow the use of `symbol` without
  class name
- `import` **must refer to package name**;
