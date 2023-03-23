# Product Types

## Tuples

```haskell
value :: (Integer, Integer)
value = (1, 2)
```

- `fst tuple` get the first value from `tuple`
- `snd tuple` get the second value from `tuple`

## Records

```haskell
data Person = Person { id :: Int, name :: [Char] }
  deriving (Show, Eq)

p = Person 17 "Q"
p = Person { id = 17, name = "Q" }

-- get id
id p

-- get name
name p
```

### Generics

```haskell
data Container a = Container { content :: a }
  deriving(Show, Eq)
```
