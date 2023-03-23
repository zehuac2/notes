- [Keys](#keys)
  - [Create Key](#create-key)
  - [List Keys](#list-keys)
  - [Export Keys](#export-keys)
    - [Export Public Key](#export-public-key)
    - [Export Private And Public Key](#export-private-and-public-key)
  - [Import Key](#import-key)
  - [Trusting an Imported Key](#trusting-an-imported-key)
  - [Delete Key](#delete-key)

# Keys

- In general, there should be one key for one identity
- A secret key contains its public key

## Create Key

```
$ gpg --full-generate-key
```

## List Keys

```
$ gpg --list-keys
$ gpg --list-secret-keys
```

- Use `--keyid-format=long` to get the full key id

## Export Keys

### Export Public Key

```
$ gpg --armor --export <key id>
```

### Export Private And Public Key

```
$ gpg --armor --export-secret-keys <key id>
```

## Import Key

```
$ gpg --import <key file>
```

This command import a secret key file. Public key import is not necessary as the
private key file already contains the public key

## Trusting an Imported Key

```
$ gpg --export-ownertrust > trust.txt
$ gpg --import-ownertrust trust.txt
```

Owner trust is a file that maps key ids to trust values

## Delete Key

```
$ gpg --delete-secret-key <key id>
$ gpg --delete-key <key id>
```
