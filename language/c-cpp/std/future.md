```cpp
template<typename T>
class future<T>;
```

- A `future<T>` object representas a signle task
- A task can only have a single `future<T>` object
  - `future<T>` is move-only
- A task can be created using `std::async(...)`

```cpp
template<typename T>
class shared_future<T>;
```

- A `shared_future<T>` is the same as a `future<T>` except it can be copied
  - Can be waited on across multiple threads

# Wait

- `wait()` method would block until the task finishes executing
- `get()` method is the same as `wait()`, except the return value of the async
  function is also returned
