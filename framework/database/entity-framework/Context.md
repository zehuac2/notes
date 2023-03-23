# Configuring

## Connection Strings

- Apps typically do not have sensitive information in connection strings
  - Ex. `Data Source=x.db` for Sqlite
- **If sensitive information is to be put in connection strings**:
  - Use
    [secret manager](https://docs.microsoft.com/en-us/aspnet/core/security/app-secrets?view=aspnetcore-3.1&tabs=linux#secret-manager)
