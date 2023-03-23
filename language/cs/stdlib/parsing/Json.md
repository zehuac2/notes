- [Overview](#overview)
  - [Prevent Trimming Errors](#prevent-trimming-errors)
- [Serialize and Desrialize Objects](#serialize-and-desrialize-objects)
  - [Source Generators](#source-generators)
- [Custom Converters](#custom-converters)

# Overview

- **Namespace**: `System.Text.Json`

## Prevent Trimming Errors

Ways to prevent trimming errors

- Source generator

# Serialize and Desrialize Objects

- `JsonSerializer` provides static methods that
  - Directly serialize an object to json string
  - Desrialize json string to an object
  - The serializer only handle's the object's public **properties**
- `JsonSerializerOptions` customzie the serialization and deserialization
  process
  - `PropertyNamingConvention`: transformation to apply to object's properties
  - `WriteIndented`: include indentation during serialization

## Source Generators

```cs
var person = new Person("Peter", 10);
var options = new JsonSerializerOptions()
{
    WriteIndented = true,
};
var context = new MyContext(options);

var json = JsonSerializer.Serialize(person, typeof(Person), context);

record struct Person(string Name, int Age);
record struct Company(string Name);

[JsonSerializable(typeof(Person))]
[JsonSerializable(typeof(Company))]
partial class MyContext: JsonSerializerContext
{
}
```

Pass the context into static methods of `JsonSerializer` to use the source
generator

- JsonSerializerContext can also be created with `JsonSerializerOptions`

# Custom Converters

```cs
struct Foo
{
  [JsonConverter(typeof(Converter))]
  public int Value;
}
```

- `Converter` needs to derive from `JsonConverter<T>`
