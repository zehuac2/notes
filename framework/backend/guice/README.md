# Guice

# Tips

- Don’t make constructors public:
  [KeepConstructorsHidden](https://github.com/google/guice/wiki/KeepConstructorsHidden)
- Don’t use Guice’s `@Inject` annotation, use Javax’s intead:
  https://github.com/google/guice/wiki/JSR330

# Assisted Injection

Using `FactoryModuleBuilder` enables the instantiation of a class where some
constructor parameters are injected and some are user-supplied

```java
public interface Pet {
}

public interface PetFactory {
  Pet create(String name);
}

public class Cat implements Pet {
  private final LogService logService;
  private final String name;

  @Inject
  public Cat(LogService logService, @Assisted String name) {
    this.logService = logService;
    this.name = name;
  }
}

public class Program {

  public static class Module extends AbstractModule {
    @Override
    protected void configure() {
      super.configure();

      install(new FactoryModuleBuilder()
        .implement(Pet.class, Cat.class)
        .build(PetFactory.class));
    }
  }

  public static void main(String[] args) {
    var injector = Guice.createInjector(new Module());
    PetFactory factory = injector.getInstance(PetFactory.class);

    Pet garfield = factory.create("Garfield");

    System.out.println(factory);
    System.out.println(garfield); // instance of Cat
  }
}
```
