```cs
namespace System.Net {}
```

Provides tools for internet connections.

# Web Listening

`class HttpListener` provides an HTTP listener, from which instances of
`class HttpListenerContext` can be retrieved per request. Then from the the
instances of `class HttpListenerContext`, properties can be retrieved to write
and read from the request
