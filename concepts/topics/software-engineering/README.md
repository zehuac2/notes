- [Overview](#overview)
  - [General Principles](#general-principles)
- [X Programming](#x-programming)
  - [Declarative Programming](#declarative-programming)
  - [Objected Oriented and Functional Programming](#objected-oriented-and-functional-programming)

# Overview

How to engineer softwares

## General Principles

- Readibility outweight ease of writing
  - Keep files under 200 lines
  - Keep functions under 25-40 lines
  - Break big functions into small functions: small functions are easier to
    understand and test
- Use types as documentation
- Mandate behavior contracts at the point of declaration, not use site (ex. auto
  trimming property wrappers in Swift. See [dotSwift - Property Wrappers][1])

# X Programming

- [Data Oriented Programming](DataOriented.md)

## Declarative Programming

```jsx
function SomeComponent({ title }) {
  // UI is described, rather than built and then updated explicitly
  return (
    <div>
      <h1>{title}</h1>
    </div>
  );
}
```

> declarative programming is a programming paradigm—a style of building the
> structure and elements of computer programs—that expresses the logic of a
> computation without describing its control flow.
>
> From [Wikipedia](https://en.wikipedia.org/wiki/Declarative_programming)

## Objected Oriented and Functional Programming

[Object oriented programming](oop/README.md)

```cpp
// object
// 1. group other object/datatypes together as its state
// 2. have methods that modify the state
class object {
 public:
   object();
   // foo might do something to the state
   void foo();

 private:
   int state_;
};
```

[Functional programming](functional-programming/README.md) is a **declarative
programming** paradigm where **functions are defined as trees of expressions**
that map values into other values, rather than a sequence of instructions that
update the state of the application like in imperative programming

- Evolved from lambda calculus

```cpp
// datatype just group other datatypes together
struct datatype {
  int state;
};

// there can be small functions that modify the datatypes
void foo(datatype &d);
```

- **Grouping of state and functions**:
  - **Object oriented programming** group states and functions into **the same
    unit**, the object
  - **Functional programming** treats state and functions **as separate units**
- **Execution order**:
  - **Object oriented programs** must logically execute instructions **in
    order**
  - **Functional programs** can be executed **out of order**
- The most natrual and concise way of functional programming often embodies many
  good OOP design principles

[1]: https://www.youtube.com/watch?v=ctNMf_qVXPg&list=WL&index=41&t=273s
