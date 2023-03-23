# Table of Content

- [Table of Content](#table-of-content)
- [Dependencies](#dependencies)
  - [External Dependencies](#external-dependencies)
- [Platforms & BOMs](#platforms--boms)

# Dependencies

```kotlin
plugins {
  `java-library`
}

dependencies {
  api("external")
  api(project("project"))
  implementation("external")
  implementation(project("project"))
  compileOnly("external")
  compileOnly(project("project"))
  runtimeOnly("external")
  runtimeOnly(project("project"))
  testX("external")
  testX(project("project"))
}
```

- If a project uses an `api` dependency, then consumers of the projects would
  also depend on the api dependency
- If a project uses an `implementation` dependency, then consumers of the
  project would not depend on the implementation dependency
- testX are only used for test builds
  - `testCompileOnly` needs to be added for every `compileOnly` otherwise there
    would be compiler errors (intellij annotations)
- Some configuration requires `java-library` plugin to be used

## External Dependencies

Externa depdencies are fetched from repositories

```gradle
repositories {
  mavenCentral()
}
```

# Platforms & BOMs

```kotlin
plugins {
  java
  `java-library`
}

dependencies {
  api(project(":utils"))
  testImplementation(platform("org.junit:junit-bom:5.7.2"))
  testImplementation("org.junit.jupiter:junit-jupiter")
}

tasks.test {
  useJUnitPlatform()
}
```

A platform is a collection of dependencies

- Referenced using `platform(name)`
- BOM is a similar concept from Maven. BOMs can be imported using
  `platform(name)`
