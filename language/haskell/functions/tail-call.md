# Tail Call

- **Tail Position** a subexpression `s` of `e` if evaluated will be taken as the
  value of `e`
- **Tail Call** a function call that exists in **tail position**

## Optimization

When a function is in tail position, the compiler would recycle the activation
record (stack), aka. creates a loop

## Convert Accumulating Recursion

```haskell
fun1 [] = 0
fun1 (x:xs)
  | even x = fun1 xs - 1
  | odd x = fun1 xs + 1

newFun1 [] = 0
newFun1 x = aux 0 x
  where
    aux a [] = a
    aux a (n:ns)
      | even n = aux (a - 1) ns
      | odd n = aux (a + 1) ns

fun2 1 = 0
fun2 n = 1 + fun2 (n `div` 2)

newFun2 n = aux 0 n
  where
    aux a 1 = a
    aux a n = aux (a + 1) (n `div` 2)

fun3 1 = 1
fun3 2 = 1
fun3 n = fun3 (n - 1) + fun3 (n - 2)

newFun3 n = aux 0 1 n
  where
    aux a1 a2 0 = a1
    aux a1 a2 n = aux a2 (a1 + a2) (n - 1)
```
