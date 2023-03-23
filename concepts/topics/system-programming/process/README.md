# ID

Processes typically have IDs (PID)

- `pid_t` type of PID
- `getpid()` get the PID of this process

# Orphans and Zombies

- A zombie is a process that is killed, but has not been waited by its parent
  process, thereby causing **its entry in the process table to not be removed**
  (**Killed, but still around**).

  - All well-behaving user process would enter this stage shortly after they
    exit, before their parents `wait` them

- An orphan process is a process whose parent has exited. On Linux and Unix,
  these types of processes immediately uses the `init` process as their parent.
  - The `init` process periodically `wait` its children (some of which are
    zombies)
  - A **long-living zombie process** can only be created when **the parent has
    neither exit nor wait, but the children has already exited**

# Process Layout

- string literal stored inside the readonly section of **data**;

# Signals

```cpp
#include <signal.h>

void handler(int sig) {}

int main() {
  signal(SIGINT, handler);

  return 0;
}
```

- Don't use `signal(signal, handler)` in multithreaded environment
- [async-signal-safe](https://man7.org/linux/man-pages/man7/signal-safety.7.html)
  functions: only a selected number of functions can be called from signal
  handlers
  - **Don't allocate heap memory in signal handlers**
