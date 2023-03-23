# Concepts

- **Wrapper**: gradle executables (`.jar` files) inside the repo. Typically they
  are commited for stability
  - `./gradle/wrapper/gradle-wrapper.properties` contains description for the
    current wrapper

# Gradle DSL

- Gradle functions can be called inside custom functions

  ```kotlin
  fun includeDir(dir: String) {
    val subProjects = File(dir).listFiles() ?: return

    for (subProject in subProjects) {
      if (File(subProject.path, "build.gradle.kts").exists()) {
        include("${dir}:${subProject.name}")
      }
    }
  }
  ```

# Upgrade Gradle Wrapper

```
./gradlew wrapper --gradle-version=7.1.1 --distribution-type=bin
```

Will upgrade gradle wrapper's version, when gradle is invoked the next time.
