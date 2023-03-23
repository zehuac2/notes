- [Primitive Types](#primitive-types)
  - [Text Search Types](#text-search-types)
    - [`tsvector`](#tsvector)
    - [`tsquery`](#tsquery)
- [Composite Types](#composite-types)
  - [Composite Values](#composite-values)
- [Array Types](#array-types)
  - [Array Values](#array-values)

# Primitive Types

## Text Search Types

### `tsvector`

### `tsquery`

# Composite Types

```sql
CREATE TYPE <Identifier> AS (
  attribute1 type1,
  attribute2 type2,
);
```

- No constraints allowed

## Composite Values

```sql
'(val1, val2)'
ROW(val1, val2)
(val1, val2)
```

- `(val1, val2)` only allowed when there are more than 1 values

# Array Types

```sql
-- ARRAY[size], ARRAY conforms sql standard
CREATE TABLE <name> (
  fixed_size1 type1[size],
  dynamic_size1 type2[],

  fixed_size2 type3 ARRAY[size],
  dynamic_size2 type4 ARRAY,

  multi_dimension type5[][]
);
```

## Array Values

```sql
-- int ARRAY[]
'{1, 2, 3}'
-- int[][]
'{{1, 2, 3}, {4, 5 6}}'
```
