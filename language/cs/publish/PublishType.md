# Types of Publish

Runtime dependent executable for current platform

```
dotnet publish
```

Runtime dependent executable for a specific platform

```
dotnet publish -r <id> --self-contained false
```

Self contained executable

```
dotnet publish -r <id>
```

## Single File Executable

Dotnet can package a self contained application into a single executable. The
first time the executable is run, it would extract the self contained
application to somewhere on the system, so subsequent running would be faster.

To publish a single file executable, do one of the following

1. Add the following to project file
   ```xml
   <PropertyGroup>
     <PublishSingleFile>true</PublishSingleFile>
   </PropertyGroup>
   ```

## macOS Notorization

Self contained applications would always have an app host.
