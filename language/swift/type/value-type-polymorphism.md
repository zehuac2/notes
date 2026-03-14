# Implementation

To achieve polymorphisms in value types, instances of protocols conformant types
are allocated on heap once their size is over 3 words

# Optimization

- Therefore, every time a value type is passed as parameter to functions who
  takes instances of protocols, there is indirections involved, which is not
  good for performance;
- To avoid this problem:
  - Prefer using generics with constraints, which can be specialized (refer to
    Generics) once optimization is enabled, removing the overhead; otherwise
    known as static polymorphism;
  - Or, try to keep the data structure under 3 word big;
