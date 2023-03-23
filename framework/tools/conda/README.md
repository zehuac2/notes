# Environment

## Export

```
$ conda env export > environment.yml
```

## Update

```
$ conda env update --file environment.yml --prune
```

- `--prune` cause conda to remove dependencies that are no longer deeded
