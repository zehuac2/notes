# `@ParameterizedTest`

Parameterized tests must be marked with
`org.junit.jupiter.params.ParameterizedTest`

- Test data are provided by various attributes

## `@MethodSource`

```java
import java.util.stream.Stream;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.junit.jupiter.params.provider.Arguments;

public class Test {
  public static Stream<int[]> getDataForA() {
    return Stream.of(new int[17], new int[77]);
  }

  @ParameterizedTest
  @MethodSource("getDataForA")
  public void testA(int[] data) {

  }

  public static Stream<Arguments> getDataForB() {
    return Stream.of(
      Arguments.of(1, 2),
      Arguments.of(3, 4));
  }

  @ParameterizedTest
  @MethodSource("getDataForA")
  public void testB(int a, int b) {

  }
}
```
