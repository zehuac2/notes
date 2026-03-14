# Builtin Tasks

## `<Message />`

Print message to std out

```xml
<Target>
  <Message Text="Content"></Message>
</Target>
```

- `Text`: string to print
- `Importance`: `high`, `normal`, `low`, `high` would always print
  - Default to `normal`

## `<ZipDirectory />`

```xml
<Target Name="Zip" AfterTargets="Build">
  <ZipDirectory
    SourceDirectory="$(OutputPath)"
    DestinationFile="$(MSBuildProjectDirectory)\mm26-test-server.zip" />
</Target>
```

Zip a directory

## `<Delete />`

```xml
<Target Name="Zip" AfterTargets="Build">
  <Delete Files="a.zip" />
</Target>
```

Delete files

- `Files` can be one file or a list of files separated by `;`
