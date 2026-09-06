# SQLite

# Transaction and Savepoint

- Savepoints can be stacked

# Shell

## `.read`

Executes each statement in a file

- If a line fails the rest of the file is still run: it is better to wrap
  `.read` inside transactions for easy revert

# Tables

- By default, sqlite tables’ columns do not have to be typed, to enforce type
  checking, use `create table ... strict;`
