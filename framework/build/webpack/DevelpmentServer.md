# Develpment Server

The package `webpack-dev-server` provides necessary dependencies for
`webpack serve` command, which runs the webpack development server

## Options

- `--config`: config.js file, would be run development mode
- `--open`: open browser window when ready

The following options needs to be configured in `webpack.config.js`

```js
module.exports = {
  devServer: {
    // The content base you would use when the bundles are actually written
    // to disk
    contentBase: "dist/",
    // port
    port: 3000,
  },
};
```
