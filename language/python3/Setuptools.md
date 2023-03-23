- [Overview](#overview)
- [Dependencies](#dependencies)
- [Namespace Packages](#namespace-packages)
- [Console Scripts](#console-scripts)

# Overview

`setuptools` is a builtin package that provides utilities to configure a
package. Package configuration is placed in `setup.py` in the project root

- To install a local package
  ```
  pip install .
  ```
- To install a local package for development
  ```
  pip install -e .
  ```

# Dependencies

- Dependencies are specified using `install_requires`
- Where to find the dependencies are specified in `dependency_links`

# Namespace Packages

```
/
  airathon/
    data/
      __init__.py
    cli/
      __init__.py
```

- Note that `airathon/` does not contain `__init__.py`

```py
from setuptools import setup, find_namespace_packages


setup(
    name="airathon",
    version="0.1.0",
    packages=find_namespace_packages(include=["airathon.*"]),
)
```

`find_namespace_packages` by default return all the folders that look like
python modules in namespace format (ex. `folder.folder.folder...`)

- `include: List[str]`: only include packages that match one of the patterns in
  the list

# Console Scripts

```py
from setuptools import setup, find_namespace_packages


setup(
    name="airathon",
    version="0.1.0",
    entry_points={
        "console_scripts": [
            "airathon=airathon.cli:main"
        ],
    },
)
```

`console_scripts: List[str]` defines the console scripts provided by this
package. it should have the format `<module>:<function>`
