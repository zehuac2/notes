# Double Checked Locking

```java
class Foo {
  private Helper helper;
  public synchronized Helper getHelper() {
    if (helper == null) {
        helper = new Helper();
    }
    return helper;
  }
}
```

Not every call to `getHelper` needs locking.

```java
class Foo {
  private Helper helper;
  public Helper getHelper() {
    if (helper == null) {
      synchronized (this) {
        if (helper == null) {
          helper = new Helper();
        }
      }
    }
    return helper;
  }
}
```

If not implemented properly, it is possible for thread A to have allocated the
memory but still doing initialization while thread B already start to use the
object.

- Caused by instruction re-ordering
- Fixable by adding `volatile` keyword to `helper`.
