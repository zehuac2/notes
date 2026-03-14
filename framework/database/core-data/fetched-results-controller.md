# Getting Objects

`var fetchedObjects` and `func object(at)` can be used to access fetched
objects.

- Not updated as the ordering changes

# User Initiated Editing

Fetched results controller is designed to handle model layer events in (MVC),
therefore, its notifications needs to be disabled for user initiated events
like:

- Reordering
- Delete

User initiated inserts typically do not cause problems
