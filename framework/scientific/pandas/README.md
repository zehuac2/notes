- [Overview](#overview)
  - [Common Pitfalls](#common-pitfalls)
- [Topics](#topics)
  - [Memory](#memory)
    - [View Memory Information](#view-memory-information)

# Overview

Pandas is a Python library for data analysis

## Common Pitfalls

- Don't iterate through data using `for` loop, **use vectorized methods**
  - `apply`

# Topics

- [Add Rows](AddRows.ipynb)
- [Apply](Apply.ipynb)
- [Create Dataframe](Create.ipynb)
- [Sample Elements](Sample.ipynb)

## Memory

- Limit the columns read: `pd.read_csv(usecols=["col1", "col2"])`
  - [Stop wasting memory in your Pandas DataFrame!][1]
- Calculating data type: `pd.read_csv(dtype={"col1": "type"})`
  - Use types that take less memory
  - [Stop wasting memory in your Pandas DataFrame!][1]

### View Memory Information

```py
df.info(memory_usage="deep")
```

[1]: https://youtu.be/pz_0lRCrlNw
