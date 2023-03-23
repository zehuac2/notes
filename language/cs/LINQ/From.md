# `from` Clause

- Each LING expression must have multiple `from` clauses
- Each layer of from expression can be considered as a layer of `for-each` loop

  ```cs
  int[] aValues = { 1, 2, 3 };
  int[] bValues = { 1, 2, 3 };

  var output =
    from a in aValues
    from b in bValues
    select new { a, b };
  ```

  Output should contains

  ```
  { 1, 1 }
  { 1, 2 }
  { 1, 3 }
  { 2, 1 }
  { 2, 2 }
  { 2, 3 }
  { 3, 1 }
  { 3, 2 }
  { 3, 3 }
  ```

- The expression is **strongly typed**
