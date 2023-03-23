# Overview

## Configuration

```
$ pylint --generate-rcfile > .pylintrc
```

### Good Names

```properties
[BASIC]

good-names = x,y,z
```

`good-names` specify names that even though does not follow snake case naming
convention, will be accepted by pylint

### Generated Members

```properties
[TYPECHECK]

generated-members=torch.*,numpy.*
```

List of members which are set dynamically and missed by pylint inference system
