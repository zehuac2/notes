# Semaphore

- **Header**: `#include <semaphore.h>`
- `int sem_init(sem_t *sem, int pshared, unsigned int value)`: initialization
  - `pshared` indicates whether the semaphore is shared between processes (non
    zero) or between threads of a process (zero)
  - `value`
- `int sem_wait(sem_t *sem)`: decrease value
- `int sem_post(sem_t *sem)`: increase value
