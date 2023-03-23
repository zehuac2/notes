# GC Objects

- Objects inheriting from `UObject` are managed by the GC

# Native Object

- Other objects can be managed using
  - `TSharedPtr`: equivalent of `std::shared_ptr`; `std::shared_ptr` may not be
    available on all platforms and is not well integrated with the rest of
    Unreal

# Resources

- [虚幻 4：智能指针基础](https://zhuanlan.zhihu.com/p/94198883)
