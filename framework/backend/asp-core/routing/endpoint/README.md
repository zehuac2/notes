# Endpoint Routing

Endpoint replaces traditional MVC routing.

## Preparation

1. Configure middlewares

   - Endpoint routing needs to be placed toward the end of the application, but
     before SPA middlewares
   - the `UseRouting` middleware must be put before the endpoint middleware, as
     it process the incoming request for the endpoints to use

   ```cs
   app.UseRouting();

   app.UseEndpoints(endpoints =>
   {
   });
   ```
