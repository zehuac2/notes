# Overview

```swift
func createLayout() -> UICollectionViewLayout {
  let itemSize = NSCollectionLayoutSize(
    widthDimension: .fractionalWidth(1.0),
    heightDimension: .fractionalHeight(1.0))
  let item = NSCollectionLayoutItem(layoutSize: itemSize)

  let groupSize = NSCollectionLayoutSize(
    widthDimension: .fractionalWidth(1.0),
    heightDimension: .absolute(44))
  let group = NSCollectionLayoutGroup.horizontal(
    layoutSize: groupSize,
    subitems: [item])

  let section = NSCollectionLayoutSection(group: group)

  return UICollectionViewCompositionalLayout(section: section)
}
```

A layout is composed using the following components (big to small)

- `NSCollectionViewCompositionalLayout`, `UICollectionViewCompositionalLayout`
- `NSCollectionLayoutSection`
- `NSCollectionLayoutGroup`: row
- `NSCollectionLayoutItem`
  - `NSCollectionLayoutSupplementaryItem`
  - `NSCollectionLayoutSupplementaryItem`
- `NSCollectionLayoutSize`

# `NSCollectionLayoutSection`

- `orthogonalScrollingBehavior`: enables nested "collection views"
  - `.continuous`: continuous scrolling
  - `.continuousGroupLeadingBoundary`: continuous, but scrolling automatically
    rest on leading boundaries
  - `.paging`: continuous, but one page at a time regardless of how fast the
    user scroll
  - `.groupPaging`: like `.paging` but the page has the size of the group
  - `.groupPagingCentered`: like `groupPaging` but paging would stop in such a
    way so that the center of a group is moved to the horizontal center of the
    section

## `NSCollectionLayoutDecorationItem`

A decoration item decorates a section

# `NSCollectionLayoutItem`

## `NSCollectionLayoutSupplementaryItem`

A supplementary item is contained inside an item

## `NSCollectionLayoutBoundarySupplementaryItem`

A boundary supplementary item extends the original item be placing itself
outside of the original item, i.e. **like headers and footers**

- Can be pinned via `pinToVisibleBounds = true`

# `NSCollectionLayoutSize`

- `.estimated`: enable self re-sizing
