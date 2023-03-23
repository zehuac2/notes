# Inheritance

To implement inheritance,

```js
function Parent(param) {}

function Child(param) {
  // Has to use .call() to substitute a different this
  // equivalent of super(...) in some languages
  Parent.call(this, param);
}

Child.prototype = Object.create(Parent.prototype);

// Must assign constructor property, as Parent.prototype already have a
// constructor
Child.prototype.constructor = Child;
```

When a property in the is queried in a child instance, the query is executed in
the following order:

1. The property is looked-up in the instance
2. The property is looked-up in `instance.__proto__`, i.e. `Child.prototype`
3. The property is looked-up in `Child.prototype.__proto__`, i.e.
   `Parent.prototype`

Note that this syntax is only valid in JavaScript.
