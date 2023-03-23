# Overview

# AoS vs SOA

Array of structures is common in object oriented programming

```cpp
struct person {
  int age;
  string name;
};

using people = vector<person>;
```

Structure of arrays is common in data oriented programming

- Like data is stored contiguously
- Process relevant data only
- Sequential access
- Arrays are parallel:
  - Same number of elements

```cpp
struct people {
  vector<int> ages;
  vector<string> names;
};
```

# References

- [SoA - The Fundamental Data-Oriented Data Structure for Memory Optimization](https://youtu.be/_MX3XTUs2VA)
