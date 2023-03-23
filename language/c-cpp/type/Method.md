# Virtual Methods

- Virtual methods **does not require an implementation to link** with so that it
  can be called

  ```cpp
  struct foo {
    virtual void boo() const = 0;
  };

  foo *make_foo();

  int main(int argc,char *argv[]) {
    const foo *foo = make_foo();
    foo->boo();

    return 0;
  }
  ```
