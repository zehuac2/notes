# Layout

## List Layout

```swift
let configuration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
let layout = UICollectionViewCompositionalLayout.list(using: configuration)
```

- If a list layout is used, `UICollectionViewListCell` should be as the cell

### Swipe Actions

```swift
configuration.trailingSwipeActionsConfigurationProvider = { indexPath in
  let delete = UIContextualAction(style: .destructive, title: "Delete") {
    _, _, complete in
    let course = self.dataSource.itemIdentifier(for: indexPath)!
    var snapshot = self.dataSource.snapshot()
    snapshot.deleteItems([course])

    self.dataSource.apply(snapshot)
    complete(true)
  }

  return UISwipeActionsConfiguration(actions: [delete])
}
```

`UICollectionLayoutListConfiguration` contains the following callbacks for
handlign swipe actions

- `trailingSwipeActionsConfigurationProvider`
- `leadingSwipeActionsConfigurationProvider`

## Outline Layout

```swift
courseCellRegistration = CellRegistration {
  cell, indexPath, task in
  var configuration = cell.defaultContentConfiguration()
  configuration.directionalLayoutMargins = NSDirectionalEdgeInsets(
    top: 8, leading: 8, bottom: 8, trailing: 8)

  configuration.text = task.name
  configuration.textProperties.font = .preferredFont(forTextStyle: .headline)

  if task.hasChildren {
    cell.accessories = [
      .outlineDisclosure(options: UICellAccessory.OutlineDisclosureOptions(style: .header))
    ]
  } else {
    cell.accessories = []
  }

  cell.contentConfiguration = configuration
}

collectionView.collectionViewLayout = _createLayout()

dataSource = DataSource(
  collectionView: collectionView
) { collectionView, indexPath, course in
  let cell = collectionView.dequeueConfiguredReusableCell(
    using: self.courseCellRegistration, for: indexPath, item: course)

  return cell
}

var snapshot = NSDiffableDataSourceSnapshot<TaskSections, Task>()
snapshot.appendSections([.notFinished, .finished])

dataSource.apply(snapshot)

var notFinishedSections = NSDiffableDataSourceSectionSnapshot<Task>()

let withChildrenTask = Task(name: "With children", hasChildren: true)

notFinishedSections.append([
  withChildrenTask,
  Task(name: "Without children"),
])

notFinishedSections.append([Task(name: "Child 1"), Task(name: "Child 2")], to: withChildrenTask)

dataSource.apply(notFinishedSections, to: .notFinished)
```

- Outline layout uses the same layout as "list"
- Outline is automatically implemented when
  - Cells has disclosure accessory
  - Snapshots of type `NSDiffableDataSourceSectionSnapshot` are applied to
    snapshots

# Presentation

## Configuring Cells

```swift
courseCellRegistration = UICollectionView.CellRegistration<CourseViewCell, Course> {
  cell, indexPath, course in
  var configuration = cell.defaultContentConfiguration()
  configuration.text = course.name
  configuration.directionalLayoutMargins = NSDirectionalEdgeInsets(
    top: 8, leading: 8, bottom: 8, trailing: 8)

  cell.contentConfiguration = configuration
}
```

Cell registrations are done by instantiating a
`UICollectionView.CellRegistration` with a callback that is used to update
cell's contents. The instantiated object is then used to obtain cells

- Contents of cells are assigned to `UICollectionViewCell.contentConfiguration`
  - Configuration objects must implement `UIContentConfiguration`
  - `struct UIListContentConfiguration` provides contents for lists cells
    - `UIListContentConfiguration` provides a set of static functions for
      commonly used styles
  - Use a new content configuration for each cell
- Cells may be reused, make sure all used properties of cells are explicitly set
  in the configuration handler

### Accessories

Accessories can be added using

```swift
cell.accessories = [
  .disclosureIndicator(),
  .checkmark()
]
```

- The cell would automaticall sort the accessories' orders
- Builtin accessories also show/hide in edit/view mode

## Obtaining Cells

```swift
dataSource = UICollectionViewDiffableDataSource<CourseType, Course>(
  collectionView: collectionView
) { collectionView, indexPath, course in
  let cell = collectionView.dequeueConfiguredReusableCell(
    using: self.courseCellRegistration, for: indexPath, item: course)

  return cell
}
```

Cells can be obtained by calling `dequeueConfiguredReusableCell`. No further
configuration is needed, which has already been handled by
`UICollectionView.CellRegistration`
