# Overview

Event keeps references of its delegates, which keeps references to handler
objects. Until the reference of delegate is removed, the handler object will not
be garbage collected. **To prevent memory leak, event handlers must unsubscribe
from events before being disposed or the last reference is lost**

# `add`, `remove`

```cs
public class Button
{
  public event Action Clicked
  {
    // Clicked += Handler
    add
    {
      // add handler to event
    }
    // Clicked -= Handler
    remove
    {
      // remove handler from event
    }
  }
}

```

# `EventHandlerList`

A map from keys to event lists. Consumers can add and remove from event lists
using keys

# Resources

- [How to: Handle Multiple Events Using Event Properties](https://docs.microsoft.com/en-us/dotnet/standard/events/how-to-handle-multiple-events-using-event-properties)
