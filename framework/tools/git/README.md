# Git

# Concepts

- **Head** branch: the branch you are on
- **Base** branch: the branch from which a branch (the head branch) is derived
  from

# Workflow

There should be four types of branch in a Git repo

- Release branch
- Development branch (from release branch)
- Feature branch (from development branch)
- Hot fix branch (from release branch)

## Clone

### SSH

SSH does not require repeated authentication when communicating with the server

1. Create an SSH key pair
2. Add the following to `.ssh/config`

   ```bash
   Host github.com
     AddKeysToAgent yes
     UseKeychain no
     IdentityFile ~/.ssh/id_github
   ```

   - `Host` should be the server name
   - Set `AddKeysToAgent` to `yes` so that **the key and its passphrase** is
     automatically added and cached to the ssh agent; if an `ssh-agent` instance
     is not active, one will be started
   - Set `UseKeychain` to `no` so that the key passpharse is not saved to
     Keychain on macOS
   - `IdentityFile` should point to the private file

3. Clone

### Partial/Sparse Clone

[Reference](https://github.com/DefinitelyTyped/DefinitelyTyped)

```bash
git clone --sparse --filter=blob:none --depth=1 <forkedUrl>
git sparse-checkout add types/<type> types/<dependency-type> ...
```

- `--sparse` initializes the sparse-checkout file so the working directory
  starts with only the files in the root of the repository.
- `--filter=blob:none` will exclude files, fetching them only as needed.
- `--depth=1` will further improve clone speed by truncating commit history, but
  it may cause issues as summarized here.

## Commits

### Staging

- `git add -p` allows you to edit the lines of files to be staged

### Signing Commits

Commits can be signed, to sign the key, you need two keys. Keys must be
associated with emails.

1. **Public Key**: to be uploaded to Git host service
2. **Private Key**: to be configured with Git using `user.signingkey`
   - Use `gpg --list-secret-keys --keyid-format=long` and look for
     `779B57A542EDFFBC` to be used as `user.signingkey`

     ```bash
     sec   rsa4096/779B57A542EDFFBC 2021-04-10 [SC]
     ```

- `commit.gpgsign=true`: sign commits by default
- If commit fails, consider add `export GPG_TTY=$(tty)` to `.bashrc` or `.zshrc`
  (TODO: what is this?)

## Fixing Commits

```bash
git commit --amend
```

## Update Local Branch From a Remote Branch

- `git pull --rebase` ensures a linear history
  - `git config pull.rebase true` to always rebase while pulling

## Update Feature Branch from Parent

```bash
# option 1
git pull origin --rebase

# option 1
git fetch origin main
git rebase origin/main
```

Rebase should be used when merging changes from a base branch onto a feature
branch

## Merge Feature Branch into `master`

- Option 1, merge:
  - Before push, update the local main branch with
    `git pull origin --rebase=merges`. `--rebase=merges` ensures that merge
    commits are not deleted after rebase. Alternatively this can be done using
    `git rebase --rebase-merges origin/main`
  - Don’t add content to merge commit. Even with `--rebase=merges`, the added
    content will still be lost.
    - Open question: Why?
- Option 2, squash: squash produce the files from a branch on the “current”
  branch as if it has been merged, but does not commit. A commit can then be
  made on the parent

## Merge Feature Branch into “LTS” Branch

- Merge into LTS after merging into master:
  `git cherry-pick --no-commit -m 1 <merge commit>`

## Reverting

### Reverting Merge Commit

```bash
git revert -m 1 <commit id>
```

- Merge commits have two parents. `-m 1` indicates the first parent, the base
  branch

## House Keeping

```bash
# delete local branches without remote counterpart
git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D
```

# Rebase or Merge

- [Rebase](rebase.md)
  - Creates a streamlined history
  - Resolve conflict for each commit
  - May require a force push (See [Rebase](rebase.md))
- Merge
  - Create a complex history
  - Only resolve one conflict

# Sensitive Information

Sensitive information should never be put in Git. To remove such information,
use [bfg](https://rtyley.github.io/bfg-repo-cleaner/)

```bash
bfg --replace-text passwords.txt  my-repo.git
```

All text matching content in `passwords.txt` will be replaced with `**REMOVED**`

# Configurations

- `fetch.prune`:
- `pull.rebase`:
- `push.autoSetupRemote`:

# References

- [Git Best Practices](https://sethrobertson.github.io/GitBestPractices/)
- [Post Production Editing in Git](https://sethrobertson.github.io/GitPostProduction/gpp.html)

# Topics

- [Rebase](rebase.md)
- [Signing](signing.md)
