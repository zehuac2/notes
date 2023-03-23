# Embedded Resource

MSBuild allows you to embed resources into .dll files

## .csproj

```xml
<ItemGroup>
  <EmbeddedResource Include="Data/AlienLanguage.json"></EmbeddedResource>
</ItemGroup>
```

Names of the resources would be formatted as follows

```
Namespace.Directories.Filename
```

Note that `/` or `\` in directories would be replaced with `.`

## Reading Embedded Resources

```cs
Assembly assembly = // get some assembly;

// Get a list of the names of resources
assembly.GetManifestResourceNames();
// Open a stream to the resource
assembly.GetManifestResourceStream("");
```
