# Localization

## Satellites

Satellite folders contains assemblies and resources files that are specific to a
culture. By default, msbuild would incorporate all available cultures available.

`<SatelliteResourceLanguages>` can be used to customize this behavior

```xml
<PropertyGroup>
  <SatelliteResourceLanguages>en;de</SatelliteResourceLanguages>
</PropertyGroup>
```

- Cultures are specified as a `;` separated list
