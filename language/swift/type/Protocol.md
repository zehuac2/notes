# Overview

# Static Member

- Protocols **cannot have static members**
- **Protocol extension can have static members**; these members

  - Can be **associated with an conforming type**
  - Can be **associated with a protocol using a `Self == X` constraint** and be
    used in

    - When the protocol is used as a **generic constraint**
    - When the protocol is used as a type, aka **existential type**

    ```swift
    protocol Being {

    }

    struct Person: Being {}

    extension Being where Self == Person {
      static var person: Person { Person() }
    }

    struct Cat: Being {
    }

    extension Being where Self == Cat {
      static var cat: Cat { Cat() }
    }

    func foo<B: Being>(being: B) {
      print(B.self)
    }

    func boo(being: Being) {

    }

    foo(being: .person)
    foo(being: .cat)
    boo(being: .cat)
    ```

    Aka. **static member lookup**
