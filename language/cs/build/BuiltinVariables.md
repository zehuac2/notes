# Path

- `$(OutputPath)`: directory underwhich the project is built
  - Ex. `bin\Release\netcoreapp3.1\` (when building without rid)
  - Ex. `bin\Release\netcoreapp3.1\osx-x64\` (when building with rid)
- `$(MSBuildProjectDirectory)`: project directory

# Platform

- `$(Platform)`: platform (ex. `AnyCPU`)
- `$(RuntimeIdentifier)`: runtime identifier for current target (ex. osx-x64)

# Framework

- `$(TargetFramework)`: target framework (ex. netcoreapp3.1)

# Configuration

- `$(Configuration)`: `Release` or `Debug`
