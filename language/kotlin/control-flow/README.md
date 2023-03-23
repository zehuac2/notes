# Control Flows

- [`when`](When.md)
- [`with`](With.md)

# Shared Control Flows With Other Languages

```kotlin
if (condition) {
  // ...
} else if {
  // ...
} else {

}
```

```kotlin
for (constant in collection) {

}

for (i in 1..2) {

}
```

# Control Flow as Expression

```kotlin
val variable = if (something) {
  "foo"
} else {
  "boo"
}
```

- Control flows in Kotlin can be used as expressions
- Control flows must always evaluate to an value
  - Ex. if must have else
- The last statement in the control flow would be used as the output of the
  expression
