# Overview

- Injectable entities are marked with `@Injectable`

# Provider

Providers are responsible for providing an injectable entity

- Prefer configuring providers using `@Injectable`; enables **tree shaking**

## Root

```ts
@Injectable({
  providedIn: "root",
})
export class Service {}
```

- An instance of `Service` will be created and shared across the entire
  application

## Module

```ts
@NgModule({
  provider: [Service]
})
```

An instance of `Service` will be created by the module
