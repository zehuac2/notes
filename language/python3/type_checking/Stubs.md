# Stubs

Stubs are definition files for existing python packages

- Shares the same layout, but don't have implementation
- **Extension**: `.pyi`

```py
from .database import Database

class MongoClient:
  def __init__(self, host: str, port: int) -> None: ...
  def __getattr__(self, item) -> Database: ...
```

# Use With Type Checkers

## `mypy`

### In Repo Stubs

Path to the stubs folder is specified using either of the followings:

- `MYPYPATH` environment variable
- `mypy_path` in `[mypy]` section in a configuration file (ex. `setup.cfg`)

  ```toml
  [mypy]
  mypy_path=stubs/
  files=src/**/*.py
  ```
