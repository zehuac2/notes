# Tasks

Tasks are functions that do either of the following

- Takes a callback as parameter: the callback would be used to either
  indicate the completion of the task or to report errors
- Returns a stream

```js
const gulp = require("gulp");

function foo(done) {
  done();
  done("error");
}

function boo() {
  return gulp.src("*.js")
    .pipe(...)
}
```

For `gulp-cli` to run tasks, they must be exported

```js
module.exports.task = foo;

export function exported() {
  //...
}
```
