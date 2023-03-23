# Overview

`tar` bundle several files into a single file

- No compression
- File info is preserved

# Creating `.tar`

- `-c`: create `.tar`
- `-z`: compress `.tar` using gzip
- `-C work_dir`: change working directory to path before starting

```
tar -c paths... > file.tar
```

`tar` will output the content of the tar file to stdout

```
tar -cf file.tar paths...
```

Write output to `file.tar`

```
tar -cf file.tar -C pathA paths...
```

Change working directory to `pathA` before packaging

# Extracting `.tar`

```
tar -xf file.tar
```

- `-x`: extract
- `-f`: location of archive
