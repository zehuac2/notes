# Ready to Run

Images pubilshed with ready to run enabled would contain both IL code and native
code to reduce startup time at the cost of size

To enable ready to run

```xml
<PropertyGroup>
  <PublishReadyToRun>true</PublishReadyToRun>
</PropertyGruop>
```

## Availibility

Only available when

- building for a specific RID
- building self contained application
