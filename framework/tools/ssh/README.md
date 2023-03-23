# Concepts

- `ssh-agent`: an authentication process; caches ssh key passphrase for you
- `ssh-add`: add a key to ssh-agent
- `ssh-kegen`: generate ssh key pairs
- [`scp`](scp.md): copy files using `ssh`

# Key Generation

```
ssh-keygen -t <algorithm> -b <size> -C <comment>
```

- `comment`: sometimes used as the user name

# Connection

```
ssh -i <key file> <user>@<host>
```
