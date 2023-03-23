- [Overview](#overview)
  - [`Flask()`](#flask)
  - [`flask run`](#flask-run)
- [Routes](#routes)
  - [Route Parameters](#route-parameters)
- [Request](#request)
  - [Query](#query)

# Overview

`flask.Flask` class serves as the entry point of the framework. To create a
server create a instance of `flask.Flask`

- Static files are automatically resolved without using `@app.route`

## `Flask()`

- `import_name`: name of the application package. Use `__name__`
- `static_folder`: where static files are
- `static_url_path`: request having this prefix will be considered a static file
  and automatically resolved (ex. given `static_url_path="/app"`,
  `/app/index.html` will be considered a static file)
- `template_folder`: where templates are
- Typically the instance is called `app`

## `flask run`

To create the server, flask run will search for either a `app` variable of
`flask.Flask` type or a `create_app` factory, which returns an instance of
`flask.Flask`

- By default, flask will search in the `app` module;
- Set environment variable `FLASK_APP` to a python module to tell flask to
  search in that module

# Routes

```py
@app.route("/", methods=["GET"])
def index():
    return "index", code
```

Route can return the followings

- `str`
- `Tuple[str, int]`: the `int` will be the status code of the response
- `Response` instance

## Route Parameters

```py
@app.route("/<int:id>", methods=["GET"])
def index(id: int):
    return f"id = {id}"
```

- Parameters default to string, use `<type:name>` syntax to specify a type for
  the parameters

# Request

`flask.request` provide access to the current request

## Query

```py
from flask import request

# ...

@app.route("/")
def index():
    filter = request.args.get("filter")
```
