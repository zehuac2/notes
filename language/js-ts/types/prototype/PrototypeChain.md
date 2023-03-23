# Prototype Chain

- Each object/instance has private prototype property
- Since the prototype object is also an object, it contains another reference to
  another prototype object, forming a **prototype chain**
- The last object will have its prototype property set to null (null has no
  prototypes, by definition), ending the prototype chain
- When a property is looked up in an object, if the object does not contain the
  property, the prototype object would be queried
  - To determine if an object has a property in itself, rather than the
    prototype, use `Object.hasOwnProperty` function
