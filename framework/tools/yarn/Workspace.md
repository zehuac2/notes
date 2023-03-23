# Creating Workspace

Workspace is defined by a root `package.json` with the following fields

```json
{
  "private": true,
  "workspaces": ["packages/*"]
}
```

- Projects in a workspace share the same
  - `node_modules`
  - `yarn.lock`
  - `dependencies` and `devDependencies` in root `package.json`
- Projects in a workspace are all automatically linked to the root
  `node_modules`

# Running Scripts in Workspace

A `script` of a `workspace` can be run using

```
yarn workspace script
```

```json
{
  "name": "workspace",
  "scripts": {
    "script": "echo foo"
  }
}
```
