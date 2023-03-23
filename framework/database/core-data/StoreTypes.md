# Overview

```swift
if isInMemory {
  if let first = container.persistentStoreDescriptions.first {
    first.type = NSInMemoryStoreType
    first.url = nil
  } else {
    let desc = NSPersistentStoreDescription()
    desc.type = NSInMemoryStoreType

    container.persistentStoreDescriptions.append(desc)
  }

  logger.info("Create as an in-memory database")
} else {
  logger.info("Create as a default database")
}
```

NSPersistentStoreDescription controls what type of store Core Data uses

- To customize Core Data's stack, set `persistentStoreDescriptions` of
  `NSPersistentContainer` instances before calling.loadPersistentStores

# In-Memory Stores

In memory stores can be created in two ways

- Setting `persistentStoreDescription.first!.url` to `/dev/null` would create an
  named in-memory store
- Setting `persistentStoreDescription.type = `NSInMemoryStoreType`
