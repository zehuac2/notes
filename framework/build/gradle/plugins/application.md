# `application` Plugin

`application` plugin adds the necessary tasks to create applications and
distribute the applications; it adds the following tasks

- `application/run`: run the application
- `distribution/assembleDist`: create a zip and a tar package
  - Output folder: `build/distributions/`
- `distribution/distTar`: create a tar package
  - Output folder: `build/distributions/`
- `distribution/distZip`: create a zip package
  - Output folder: `build/distributions/`
- `distribution/installDist`: create an **uncompressed** installation
  distribution
  - Output folder: `build/install/<name>`

## Main Class

To create a runnable distribution, the main class must be provided

```groovy
application {
  mainClass.set("Program")
}
```

### Manifest Not Needed!

Note that the followings are not needed for creating runnable distributions

```groovy
jar {
  manifest {
    attributes "Main-Class": "Program"
  }
}
```

## Default JVM Args

```groovy
application {
  applicationDefaultJvmArgs = ["-enableassertions"]
}
```
