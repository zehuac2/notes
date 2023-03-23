# macOS Notorization

Starting from macOS Catalina, apps distributed with a developer ID must be
notorized. .Net Core 3 are distributed with notorization.

Starting from .Net Core 3, the native executable (app host) that `dotnet build`
generate would be disabled. To enable the app host, do one of the following

1. Add this to project file
   ```xml
   <PropertyGroup>
     <UseAppHost>true</UseAppHost>
   </PropertyGroup>
   ```
2. Build project using `dotnet run -p:UseAppHost=true`

Self contained applications would always have an apphost

## Implications

### Certificates

The default host `dotnet *.dll` and other app hosts share different
certificates, which may be important for ASP.Net Core

### Entitlements

The default host `dotnet` has a set of default entitlements.

If you want to use additional entitlements, enable app host and add the
entitlements locally
