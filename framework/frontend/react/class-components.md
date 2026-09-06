# Class Components

# Life Cycle

1. Mounting
   1. `constructor(props: any)`
   2. `static getDerivedStateFromProps(props, state)`
   3. `render()`
   4. `componentDidMount()`
2. Updating
   1. `static getDerivedStateFromProps()`
   2. `shouldComponentUpdate()`
   3. `render()`
   4. `getSnapshotBeforeUpdate()`
   5. `componentDidUpdate()`
3. Unmount
   1. `componentWillUnmount()`
4. Error Handnling
   1. `static getDerivedStateFromError()`
   2. `componentDidCatch()`

# State

## General

- `setState` will make a "request" for state to be updated
  - Depending on where `setState` is called, different priorities will be
    assgined (ex. updates in events will have a higher priority than those from
    network requests)
  - **Request with higher priorities are more likely to be run sync; others are
    more likely to be async**
  - React **may batch several enqueued changes** and then apply them together;
- The component is always re-rendered unless "shouldComponentUpdate()" returns
  false;
- `setState` can take a completion callback
- After a component's real DOM is updated, both `componentDidUpdate()` and the
  completion callback will be called; it is recommended to reference the new
  state in `componentDidUpdate()`;

## Variants

`setState(updater, callback)`

- `updater: (state, props) => changes` will be called with the updated state
  from the previous executed request and props passed in and returns changes to
  the current state;
  - `changes: any` should be the changes to the current state;
    - The changes will be shallow merged into the current state;
- `callback`: called after DOM update has occured
  - **Note that schedule updates in callback would prevent update batching**;

`setState(update, callabck)`

This form is discouraged due to the async nature of update

# Pure Component

- A pure component is a component whose `shouldComponentUpdate()` method
  shallowly compares the new state and the new props object with the old state
  and the old props;
  - Props are passed as objects;

## Shallow Equal

- Two primitives are said to be shallow equal if `===` returns `true`;
- Two complex objects are said to be shallow equal if all their keys are equal
  when the keys are compared using the `===` operator;
- Source: `react/packages/shared/shallowEqual.js`;
