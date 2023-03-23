# Hidden Type

In v8, hidden types describes the shape of an object, i.e. what property does it
have and map property names to offsets in memory of the object

- A new hidden type is created every time a new property is added
- Each object contains a pointer to the hidden type
- When two objects with the same hidden type is added with the same property,
  only one new hidden type is created
