- [Syntax](#syntax)
  - [Property Functions](#property-functions)
  - [Choose, When](#choose-when)
- [Project](#project)
  - [Disable Defaults from `Microsoft.NET.SDK`](#disable-defaults-from-microsoftnetsdk)
    - [Items](#items)
    - [Assembly Attributes](#assembly-attributes)
- [Items](#items-1)
- [Properties](#properties)
- [Task and Targets](#task-and-targets)
  - [Tasks](#tasks)
  - [Targets](#targets)
    - [Running Targets](#running-targets)
- [Imports](#imports)
- [Command Line Options](#command-line-options)
- [References](#references)

# Syntax

- `$(Property)`:
  - Get the value of property
  - Invoke property function
- `@(Item):`: get the value of an item at the point of execution
- `'ABC'`: String with content `ABC`
- `'$(Constant)'`: convert `Constant` to string

## Property Functions

- String (instance) property functions
- Static property functions
- MSBuild property functions

## Choose, When

- Cannot be placed inside `<Target>`

# Project

Projects starts with a `<Project Sdk="x"></Project>` element

```xml
<Project Sdk="x">
</Project>
```

## Disable Defaults from `Microsoft.NET.SDK`

### Items

- `EnableDefaultItems`
- `EnableDefaultCompileItems`

### Assembly Attributes

- `GenerateAssemblyVersionAttribute`
- `GenerateAssemblyInfo`

# Items

Items are input into the build process

```xml
<ItemGroup>
  <Compile Include="X.cs" />
  <Content Include="README.txt" />
  <Reference Include="Assembly.dll" />
  <PackageReference Include="Package" Version="1.0.0" />
</ItemGroup>
```

- Items are put into `<ItemGroup></ItemGroup>`
- Items can have meta data
  ```xml
  <PackageReference Include="Package">
    <Version>1.0.0</Version>
  </PackageReference>
  ```
- Can have wildcards and exclude items
  ```
  <Compile Include="*.cs" Exclude="A.cs" >
  ```

# Properties

Properties configure the build process

- Properties are put into `<PropertyGroup></PropertyGroup>`
- Properties can refer to other properties
  ```xml
  <AssemblyVersion>$(Version)</AssemblyVersion>
  ```
- Properties can have a `Condition` attribute (including property groups)
  ```xml
  <DefineConstants Condition="'$(TargetFramework)' = 'netstandard2.0'">
    FOO
  </DefineConstants>
  ```
- `<PropertyGroup></PropertyGroup>` can also be used to define custom variables
  ```xml
  <PropertyGroup>
    <ZipFile>$(MSBuildProjectDirectory)\latextools-$(RuntimeIdentifier).zip</ZipFile>
  </PropertyGroup>
  ```

# Task and Targets

## Tasks

**Task**: a unit of action

- Ex. create directory, copy files, compile

## Targets

```xml
<Target Name="NPM" BeforeTargets="Prepare">
  <Exec Command="npm install" />
  <Exec Command="npm run build" />

  <ItemGroup>
    <Content Include="wwwroot/**" Exclude="@(Content);$(DefaultItemExcludes)" />
  </ItemGroup>
</Target>
```

**Target**: group tasks together and express dependencies between operations

- Each target is run only once
- Tasks are put into targets
- Targets cannot have cyclic dependencies
- Targets can still contain items and properties
  - These items and targets would be used after the target's action is done
- Targets can be hooked after other targets
  - `BeforeTargets`
  - `AfterTargets`
- Ex. clean, build, publish, pack

### Running Targets

- Default targets: `dotnet msbuild` or `msbuild`
- Restore project and run build: `dotnet build`
- Specific targets: `msbuild -t:Target` or `msbuild /t:Target`

# Imports

```xml
<Import Project="..\..\Shared.props">
<Import Project="..\..\Shared.targets">
```

- The imported files still have to start with `<Project></Project>`
  ```xml
  <Project>
    <PropertyGroup>
    </PropertyGroup>
  </Project>
  ```
- MSBuild consider all configuration files as projects
- **Convention**
  - Property files are named `X.props`
    - Include at the top of a build file
  - Target files are named `X.targets`
    - Include at the end of a build file
- Magic file names: files with the following names would be automatically
  imported
  - `Directory.Build.props`
  - `Directory.Build.targets`

# Command Line Options

- Preprocess: `msbuild /pp:out.xml`; gives a preprocessed version of msbuild
  configuration file; with all targets, variables and tasks included
- Log: `msbuild /flp:verbosity=dlg`
- Binary log `msbuild /bl`

# References

- [Common Properties](https://docs.microsoft.com/en-us/visualstudio/msbuild/common-msbuild-project-properties?view=vs-2019)
- [SDK Style Project](https://docs.microsoft.com/en-us/dotnet/core/project-sdk/overview)
- [Property Functions](https://docs.microsoft.com/en-au/visualstudio/msbuild/property-functions?view=vs-2022)
