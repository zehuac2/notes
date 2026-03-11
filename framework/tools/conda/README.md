# Environment

## Export

```sh
$ conda env export > environment.yml
```

## Update

```sh
$ conda env update --file environment.yml --prune
```

- `--prune` cause conda to remove dependencies that are no longer deeded
