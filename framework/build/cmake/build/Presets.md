- [Overview](#overview)
- [Types of Presets](#types-of-presets)
  - [Configure Presets](#configure-presets)
    - [Cache Variables](#cache-variables)
    - [Environment Variables](#environment-variables)
  - [Build Presets](#build-presets)
  - [Test Presets](#test-presets)
- [Macros](#macros)

# Overview

- There are two types of preset files
  - `CMakePresets.json`: project wide configurations; **checked into git**
  - `CMakeUserPresets.json`: local configurations; **excluded from git**
- Preset files should be put in the root directory
- Preset file should contain a `version` attribute
  ```json
  {
    "version": 3,
    "configurePresets": [],
    "buildPresets": [],
    "testPresets": []
  }
  ```

# Types of Presets

```json
{
  "buildPresets": [
    {
      "name": "default",
      "configurePreset": "development"
    }
  ],
  "testPresets": [
    {
      "name": "default",
      "configurePreset": "development"
    }
  ]
}
```

Both build and test preset should be using a configure preset through `inherits`
or `configurePresets`

## Configure Presets

Configure presets are used with `cmake` to generate build files

- Must have a `name` field

### Cache Variables

```json
{
  "version": 3,
  "configurePresets": [
    {
      "name": "development",
      "cacheVariables": {
        "CMAKE_EXPORT_COMPILE_COMMANDS": {
          "type": "BOOL",
          "value": "TRUE"
        }
      }
    }
  ]
}
```

A map to define cmake cache entries that are regularly passed to cmake via
`cmake -DNAME=VALUE`

- Keys are variable names
- Values can be
  - A string
  - An object `{ "type": XXX, "value": XXX }`

### Environment Variables

```json
{
  "version": 3,
  "configurePresets": [
    {
      "name": "development",
      "environment": {
        "TEST": "TEST of development",
        "TEST2": "Test 2"
      }
    }
  ]
}
```

Define process environment variables.

## Build Presets

```
cmake --build <dir> --preset <preset>
```

Build presets are intended for using with `cmake --build <dir>` command

## Test Presets

```
ctest --test-dir build --preset <preset>
```

Test presets are intended for using with `ctest` command

# Macros

Macros cannot have circular references

- `$env{NAME}`: get environment variable `NAME`
- `$penv{NAME}`: get environment variable `NAME` **from the parent (process)**
  - [CMake might change the definitino of parent in the future](https://gitlab.kitware.com/cmake/cmake/-/issues/22877)
