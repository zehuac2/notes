- [Overview](#overview)
- [`get`](#get)
- [`put`](#put)

# Overview

```hs
import Control.Monad.State.Lazy

nextInt :: State Int Int
nextInt = do
  counter <- get
  put (counter + 1)

  trace $ show counter

  return (counter + 1)

next3Sum :: State Int Int
next3Sum = do
  a <- nextInt
  b <- nextInt
  c <- nextInt

  return (a + b + c)

main :: IO ()
main = do
  print (evalState next3Sum 0)
```

State monads are functions. Functions that returns a state monad in reality
returns a function that takes the state as input.

- Define state: `State state action`
- Get state: `get`
- Set state: `put`
- Evaluate state: `evalState`

Note that `get` and `put` don't take state as parameters. `get` and `put`
returns monads, i.e. functions. The state is passed to these functions behind
the scenes through monad binding (`>>=` and `>>`)

# `get`

`get` returns a state monad that consider the `state` to be the return value. As
a result, `get >>= (\state -> ...)` or `do state <- get` can be used to extract
the state

# `put`

`put` takes a value and then place the value as the state of a state monad
