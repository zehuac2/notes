# `std::forward<T>(...)`

- If `T` is passed, then `forward` returns a `T &&`
- If `T &` is passed, then `forward` returns a `T &`

# `std::move<T>(...)`

Returns a **unamed right reference**
