# Entity Framework Core

Abbreviated as `ef`

## Concepts

- **Migration**: migrations are ways to apply changes between two sets of model
  definitions. Migration can be done
  - Using generated C# code during design-time
  - USing generated SQL scripts during design-time
  - At runtime
- **Model**: the definition of objects
- **Context**: handle to interact with the database

## Workflow

1. Install dependencies
   1. `Microsoft.EntityFrameworkCore.Design`
   2. `Microsoft.EntityFrameworkCore.X`
      - `X` refers to EF Core backends (ex. `Sqlite`)
   3. `dotnet-ef` (global tool)
2. Add `DbContext` subclasses
3. Add models
4. `dotnet ef migrations add Initial`: to create initial migration
5. `dotnet ef database update`: create the database using initial migration
