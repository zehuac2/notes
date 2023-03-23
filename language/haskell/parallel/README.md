# Overview

- [`Control.Parallel`](Control.Parallel.md): running in parallel
  - `par x y`: run `x` and `y` at the same time, returns `y`
  - `pseq x y`: make sure `x` is evaluated before `y` is run
  - `Eval a` monad
    - `runEval :: Eval a -> a`
- [`Control.Monad.Par`](Control.Monad.Par.md): data flow in parallel

## Strategy

**Strategy**: means of modularizing parallel code by separating algorithm from
parallelism; `type Strategy = a -> Eval a`
