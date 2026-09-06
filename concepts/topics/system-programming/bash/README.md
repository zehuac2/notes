# Shell

# Jobs

List jobs managed by the shell.

```bash
jobs
```

# Sub Shell

```bash
(cd path && do_something)
```

Commands wrapped in () will run in a subshell. This way, changes to working
directory of one command does not modify working directory of other commands

# ss

```bash
ss -lptn 'sport = :80'
```

List all processes listening on a port

# Locate Executable

```bash
# locate node in PATH.
# provides portability between different installations of node
/usr/bin/env node
```

# References

- https://devhints.io/bash

# Topics

- [Arguments](arguments.md)
- [Environment Variables](environment-variables.md)
- [Escape Codes](escape-code.md)
- [Globbing](globbing.md)
- [Program Return Values](program-return-value.md)
