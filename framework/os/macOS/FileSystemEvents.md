# File System Events

`FSEventStream...` provides building blocks for listening to file system events

```swift
import CoreServices
import CoreFoundation
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func callback(
    streamRef: ConstFSEventStreamRef,
    clientCallBackInfo: UnsafeMutableRawPointer?,
    numEvents: Int,
    eventPaths: UnsafeMutableRawPointer,
    eventFlags: UnsafePointer<FSEventStreamEventFlags>,
    eventIds: UnsafePointer<FSEventStreamEventId>) {

    print("callabck fired, numEvents: \(numEvents)")
}


let paths = [
    "/Users/ZehuaChen/Desktop/" as CFString
] as CFArray

let stream = FSEventStreamCreate(
    nil,
    callback,
    nil,
    paths,
    FSEventStreamEventId(kFSEventStreamEventIdSinceNow),
    2.0,
    FSEventStreamCreateFlags(kFSEventStreamCreateFlagFileEvents))!


FSEventStreamScheduleWithRunLoop(stream, CFRunLoopGetMain(), CFRunLoopMode.defaultMode.rawValue)
print("stream scheduled")

FSEventStreamStart(stream)
print("stream start")

CFRunLoopRun()
print("run loop returns")
```
