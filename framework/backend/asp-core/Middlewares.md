# Overview

A middle ware is a step in the request-response cycle

- To use a middle ware, use `IApplicationBuilder.UseMiddleware` function

# Factory Based Middlewares

- Factory based middle wares implements `IMiddleware`
- Must be registered as either a scoped or transient service
- Created by `IMiddlewareFactory` in the DI container
- Can use DI features
