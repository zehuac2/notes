- [COM](#com)
  - [Instantiation](#instantiation)
  - [Object and Interface](#object-and-interface)
    - [`QueryInterface`](#queryinterface)
  - [Lifetime](#lifetime)
    - [Ref Count](#ref-count)
  - [Memory Allocation](#memory-allocation)
    - [Why Use Separate Functions](#why-use-separate-functions)

# COM

```cpp
HRESULT CoInitializeEx(
  [in, optional] LPVOID pvReserved,
  [in]           DWORD  dwCoInit
);
```

- Use `CoInitializeEx` to initialize COM before interacting with APIs
  - `COINIT_APARTMENTTHREADED`: You will access the interfaces from a single
    thread. The thread has a message loop;
  - `COINT_MULTITHREADED`: You will access the interfaces from multi-threaded;
  - `COINT_DISABLE_OLE1DD`: Disable an obsolete technologies to avoid issues;
- Use `CoUnitialzie` to unitialize COM
- Most COM APIs returns a `HRESULT`
  - `SUCCEEDED(x)` if `HRESULT` means success
  - `FAILED(x)` if `HRESULT` means failure

## Instantiation

There are two ways with which you can create a COM object;

- Built-in function;
- CoCreateInstance() provided by COM;

Since two objects can implement the same interface and an object can implement
multiple interfaces, the function needs two pieces of information to create an
instance.

- The object to created;
- The interface to get from the object.

## Object and Interface

In COM, an object and an interface is identified by using two 128-bit integer,
GUID (globally unique identifier):

- The one indicating the object starts with the prefix CLSID (class identifier)
- The one indicating the interface starts with the prefix IID (Interface ID)

### `QueryInterface`

`QueryInterface`

- `riid`: indicator of which interface you want. You are supposed to pass in a
  macro that starts with IID prefix;
- `ppvObject`: the pointer to the pointer which hold the interface to contain
  the returned interface

## Lifetime

Every COM objects directly or indirectly inherits from the interface `IUnknown`,
which declare three functions:

- `AddRef`: increment the object's reference count by one;
- `Release`: decrement the object's reference count by one;

### Ref Count

- When an object is created, it will have a reference count of 1;
- When you copy the pointer, you must call the AddRef function of the object you
  are copying;
- After you are done using the pointer, you must call Release method;
- When reference count is 0, the object will destroy itself.

## Memory Allocation

- `CoTaskMemAlloc` allocate some memory in the heat just like malloc and new do
- `CoTaskMemFree` frees a block of memory in the heap just like free or delete /
  delete[] do;

### Why Use Separate Functions

- **Be uniform**: C++ allow either malloc and new, meaning you may need to use
  free and delete accordingly, therefore these two functions provide a uniform
  approach;
- **Binary Standard**: COM is a binary standard, meaning it is not supposed to
  be tied to a particular programming language;
