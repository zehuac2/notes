- [Basic Syntax](#basic-syntax)
- [Concepts](#concepts)
- [Types](#types)
  - [Math](#math)
- [Notes on SQLite](#notes-on-sqlite)

# Basic Syntax

- SQL statements all ends with `;`
- SQL comments begins with `--`

# Concepts

- Tables: All SQL data are organized into tables
- Views: views are tables that are computed when needed;
  - Views' data is not stored
  - Views' definitions are stored

# Types

SQL is a strongly typed language.

- `CAST(<value> AS <Type>)`: cast `<value>` to `<Type>`
- Primitive Types
  - [`tsvector`](Types.md)
  - [`tsquery`](Types.md)
- Custom Types
  - [**Composite Types**](Types.md)
  - [**Array Types**](Types.md)

## Math

- `Int / Int -> Int`: `1 / 2 -> 0`
- `Float / Int -> Float`

# Notes on SQLite

SQLite is very forgiving when it comes to syntax errors. SQL code that works
with SQLite might not work with other implementations.
