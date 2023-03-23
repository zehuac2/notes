# Overview

```objc
@interface Foo: NSObject

@property (nonatomic, readonly) int val;
@property NSString *s;

@end

@implementation Foo

- (instancetype)init
{
  self = [super init];

  if (self) {
    // always prints 0
    NSLog(@"%d", self.val);
    // always prints null
    NSLog(@"%@", self.s);
  }

  return self;
}

@end

```

- Properties are initialized to default value before NSObject's `init` method
  returns
