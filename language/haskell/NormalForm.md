# Overview

- **Weak Head Normal Form**: top is data constructor or lambda, not application
- **Normal Form**: data constructors or lambdas all the way down
- `x seq ()`: evaluate one element of `x`
- `Control.Monad`
  - `class NFData`: normal form data
  - `x deepseq ()`: evaluate all elements of `x`
