# Functions

- `r0 :: Strategy a`: `r0 x`: do not evaluate x
- `rseq :: Strategy a`: evaluate to weak head normal form; wait for completion
- `rdeepseq :: NFData a => Strategy a`: fully evaluate then proceed
- `rpar :: Strategy a`: spark evaluation (in parallel) to weak head normal form
- `rparWith :: Strategy a -> Strategy a`: `rparWith s x` spark evaluate `x`
  using `s`
- `parMap :: (a -> b) -> [a] -> Eval [a]`: load balanced
- `evalTuple2 :: Strategy a -> Strategy b -> Strategy (a, b)`: evaluate two
  elements in serial
- `parPair :: Strategy (a, b)`: evaluate two elements in parallel
  - `parPair rdeepseq rdeepseq (a, b)`: spark two threads that evaluate a and b
    to normal form
- `evalList :: Strategy a -> Strategy [a]`
- `parList :: Strategy a -> Strategy [a]`
