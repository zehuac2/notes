# Rebase

# Overview

Rebase duplicate commits of the source branch in the target branch. Existing
commits of the target branch will be rewritten as a result of duplication

```bash
git rebase source
git rebase source target
```

- Creates a simpler commit graph than merge

# Interactive Rebase

```bash
git rebase -i
git rebase --interactive
```

Allow users to dictate what would happen to the commits on the head branch

# Push After Rebase

Since history has been rewritten as a result of rebasing, `git push` will be
rejected. Use `git push --force-with-lease` instead.

- `git push --force-with-lease` not push if the value of local branch and remote
  branch does not match (someone has made an edit). Fetching/pulling the local
  branch will fix this
- `git push --force` will overwrrite the remote branch regardless, causing the
  newer commits on the remote branch to be lost

Always prefer **`--force-with-lease`**
