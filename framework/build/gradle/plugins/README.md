# Gradle Plugins

Markdown files should match the names of the plugins

# Use Plugins

```gradle
plugins {
  // for core plugins
  id 'name'
  // for community plugins
  id 'name' version 'version'
}

apply plugin: 'name'
```

- Note that the `plugins` syntax does not work if there is a parent scope (ex.
  `allprojects`)
