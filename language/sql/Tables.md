- [Create Table](#create-table)
  - [Unique](#unique)
  - [Primary Key](#primary-key)
    - [SQLite 3](#sqlite-3)
    - [PostgreSQL](#postgresql)
  - [Foreign Key](#foreign-key)
- [Delete Table](#delete-table)
- [Alter Table](#alter-table)
  - [Alter Column Type](#alter-column-type)

# Create Table

```sql
CREATE TABLE <table> (properties);
```

## Unique

```sql
CREATE TABLE Students (
  quote CHAR[20],
  UNIQUE(quote)
);
```

- There cannot be duplicate unique rows in a table

## Primary Key

- A **table** can only have **one primary key**
  - **Unique**: auto increment
  - **Not required**
  - **Cannot be null**

### SQLite 3

```sql
CREATE TABLE People (id INTEGER PRIMARY KEY, name VARCHAR);
CREATE TABLE People (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR);
```

- `INTEGER PRIMARY KEY` is an alias for `ROWID`
  - Always **64 bit**
  - If **field is not specified** on insertion, the **field will be filled using
    an unused integer**
- `AUTOINCREMENT` is used to **prevent value reuse**

### PostgreSQL

```sql
CREATE TABLE Users (
  uid bigserial,
  name varchar(20),
  PRIMARY KEY (uid)
);
```

- Use `smallserial` (16 bit), `serial` (32 bit), `bigserial` (64 bit) to perform
  **auto incrementation**
- Specify primary key using `PRIMARY KEY (uid)`

## Foreign Key

```sql
CREATE TABLE Relationship (
  sid INT,
  FOREIGN KEY(sid) REFERENCES Students
    ON DELETE CASCADE
    ON UPDATE SET DEFAULT
);
```

- Can be **null**

# Delete Table

```sql
DROP TABLE <table>;
```

# Alter Table

## Alter Column Type

```sql
ALTER TABLE <table>
  ALTER <column> TYPE <new type> [USING <expression>];
```

```sql
CREATE TABLE Compartments(
  clevel INT NOT NULL CHECK(clevel >= 0),
  temperature FLOAT,
  PRIMARY KEY (clevel)
);

CREATE TYPE Temperature AS (
  value FLOAT,
  isF BOOLEAN
);

ALTER TABLE Compartments
  ALTER temperature TYPE Temperature USING ROW(temperature, TRUE);
```

- `USING <expression>` is optional
- `expression` should evaluate to `new type`
- `column` can be used as a variable in `expression`, to access row value
