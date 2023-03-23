# Overview

Predicates are put after `WHERE`

- `value IN (subquery`
- `EXISTS (subquery)`
- `UNIQUE (subquery)`
- `value op ANY (subquery)`: return true if any elements in subquery meet op
- `value op ALL (subquery)`: return true if all elements in subquery meet op
