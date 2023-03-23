# Gradle

```groovy
plugins {
  id 'java'
}

repositories {
  mavenCentral()
}

dependencies {
  testImplementation('org.junit.jupiter:junit-jupiter:5.6.2')
}

test {
  useJUnitPlatform()
}
```
