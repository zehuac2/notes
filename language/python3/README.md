- [Language](#language)
  - [String](#string)
    - [F String](#f-string)
  - [Numbers](#numbers)
    - [Complex Numbers](#complex-numbers)
  - [Functions](#functions)
  - [Modules](#modules)
    - [Import](#import)
      - [Lazy Import](#lazy-import)
    - [Export](#export)
      - [Re-Export](#re-export)
  - [Package](#package)
  - [Functional Programming](#functional-programming)
- [Installation](#installation)
  - [Linux](#linux)
- [Interpreter](#interpreter)
  - [`python -m <module>`](#python--m-module)

# Language

## String

### F String

```py
variable = 0
f_string = f"variable = {variable}"
```

Recommended over `.format(...)`

## Numbers

### Complex Numbers

```
1 + 2j
```

`1` is the real component and `2` is the imaginery component

- `x.real` gives the real component
- `x.imag` gives the imaginery component

`numpy` complex numbers have the same properties

## Functions

```py
def foo(param1, param2, *, param3)
```

- Parameters after `*` must be passed via `key=value` expressions

## Modules

- **A module is a python file**
- Python look for modules in `sys.path`
  - To add to `sys.path`, use `sys.path.append` or `PYTHONPATH` environment
    variable

### Import

```py
import module_a
import module_a as ma
from module_a import foo
from module_b import *
```

- Imported entities are considered to be variables
  - Entities **imported on the document level** are considered to be **global
    variables** (slower)

#### Lazy Import

```py
def use_foo():
  import foo

  return foo.service()
```

Only during the first time `use_foo` is called, `foo` is imported. On
consecutive calls, `foo` is not imported again.

### Export

#### Re-Export

```py
from .module import A
```

- This **implicitly** re-export `A` from a module
  - This would trigger warnings with `mypy` when `--strict` is turned on
- To make this re-export implictly, add `__all__ = ["A"]` after the iports

## Package

Packages are defined to be folders that contain

- `package/__init__.py`: when a user `import package`, `__init__.py` is imported

## Functional Programming

- `class` can be wrapped in [`@dataclass`](types/Dataclass.ipynb)
- Partial application: `functools.partial`

# Installation

## Linux

The following snippet installs python 3.9

```
sudo apt update
sudo apt install software-properties-common

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

sudo apt install python3.9

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.9 get-pip.py
```

- After executing the above script, add `/home/<user>/.local/bin/pip3.9` to
  `PATH`
- Finally, python3.9 and pip3.9 will be available for use

# Interpreter

## `python -m <module>`

1. Add current working directory to `sys.path`
2. Find `<module>` in `sys.path` and execute it
