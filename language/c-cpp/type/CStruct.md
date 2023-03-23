# Syntax

```c
struct name {
  // Contents
};

int main() {
  struct name name;

  return 0;
}
```

- Without using typedefs or macros, the `struct` keywords must be used everytime
  to declare a struct;

# Using With Typedefs

```c
typedef struct name name_t;
name_t name;
```

````c
typedef struct {
  // Contents
} name_t;

name_t name;
```

# Nested Structs

```c
typedef struct {
 struct {
    size_t year;
    size_t month;
    size_t day;
 } age;
} person_t;
````

- `age` will be a property to `person_t`
- `age` will be of anonymous type
