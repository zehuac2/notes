# Snapshot

- Truth of UI state
- Contain unique identifiers for sections and items

## Core Data

Core data represents snapshots as `NSDiffableDataSourceSnapshotReference`

- Must cast to `NSDiffableDataSourceSnapshot<String, NSManagedObjectID>`

# Diffable Data Source

- `apply(_:)`: update the data source to a specific snapshot
  - Can be called from a background queue
  - Be consistent on what queues `apply()` is called
- `snapshot()`: gets the latest snapshot

## Animation

Diffable data source would use the most apppropriate animation for updating
views for the context

For example

- Use `.left` animation to delete rows when the modifications are made in swipe
  actions
- Use `.fade` animation to delete rows otherwise
