- [POSIX Platforms](#posix-platforms)

# POSIX Platforms

Password caching configurations are stored in the configuration file
`~/.gnupg/gpg-agent.conf`

```
default-cache-ttl 600
max-cache-ttl 7200
```

Numbers are in seconds

- `default-cache-ttl`: each time the password is accessed, the timer reset. If
  the timer expires, the password expires
- `max-cache-ttl`: the max amount of time until the password expires, even
  though it may have been just accessed
