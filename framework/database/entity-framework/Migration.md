# VCS

- Migration code needs to be added to the repository

# Runtime Migration

```cs
myDbContext.Database.Migrate();
```

Applies any pending migrations for the context to the database. Will create the
database if it does not already exist. (This is useful for apps with local
storage to perform initialization)

- This method is incompatible with `DbContext.Database.EnsureCreated()`, which
  do not perform migration but still create the database
