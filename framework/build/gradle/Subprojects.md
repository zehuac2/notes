# Subprojects

```kotlin
// console is a sub project to the root project
include("console", "other")

// console:helpers is a sub project to console
include("console:helpers")
```

Subprojects must be included in the `settings.gradle.kts` file

- There can only be one `settings.gradle.kts` file per project

## Root Level Configurations

In the root `build.gradle.kts`

- Shared configurations can be configured
- Additional configurations can be added to projects
  - Dependencies
  - Tasks

To add configuration to an existing project

```gradle
project(":<name>") {
  // configurations
}
```

To add shared configurations to all projects

```kotlin
allprojects {
  // configurations
}
```

To add shared configurations to all subprojects

```kotlin
subprojects {
  // configurations
}
```
