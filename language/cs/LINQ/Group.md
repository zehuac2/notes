# `group` clause

```cs
IEnumerable<IGrouping<Property, Type>> element =
    from variable in collection
    group variable by variable.Property
```

- `group` clause groups elements by a property.
- Elements with the same values of the property is put into a group
- The output type is `IEnumerable<IGrouping<int, T>>`
- `IGrouping<Property, T>` can be enumerated to find all instances that have the
  same property value
