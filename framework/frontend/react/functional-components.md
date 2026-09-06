# Functional Components

# Hooks Recipes

## Data Fetching

Render as you fetch

- [`react-query`](https://tanstack.com/query/v4/?from=reactQueryV3&original=https://react-query-v3.tanstack.com/)
- [SWR](https://swr.vercel.app)

## State Machines

- `xstate`

# Hooks

Some hooks with functions as parameters, like `useEffect(fn, dependencies)` take
a list of values as its dependencies and would only rerun the function when the
dependencies has changed. **Passing an empty list would cause the function to be
only run once**

```js
function Foo(): JSX.Element {
  useEffect(() => {
    // componentDidMount
  }, []);
  return <div></div>;
}
```

## `useId`

## `useEffect`

Used for synchronization between React and external systems. Ideally, useEffect
should not contain alls to React APIs.

- Synchronization should be able to run twice without producing issues

[https://youtu.be/HPoC-k7Rxwo?si=IF5Q_vPEnTF8t07j](https://youtu.be/HPoC-k7Rxwo?si=IF5Q_vPEnTF8t07j)

### Action Effects

Actions effects are only supposed to run once

- Ideally put inside event handlers

## `useSyncExternalStore`

Used to read and subscribe to extern data sources

## `useReducer`

```tsx
interface AppState {
  count: number;
}

type AppAction = "increment" | "decrement";

function reducer(state: AppState, action: AppAction): AppState {
  switch (action) {
    case "increment":
      return { count: state.count + 1 };
    case "decrement":
      return { count: state.count - 1 };
    default:
      return state;
  }
}

export default function App() {
  const [state, dispatch] = useReducer(reducer, { count: 0 });

  return (
    <div>
      <h1>{state.count}</h1>
      <button onClick={() => dispatch("increment")}>+</button>
      <button onClick={() => dispatch("decrement")}>-</button>
    </div>
  );
}
```

- `dispatch`’s identity is stable. Therefore they don’t need to be in dependency
  list of other hooks
- States can be lazily initialized using
  `useReducer(reducer, initialCount, init)`

## `useRef`

- **ref**: `React.useRef(initial)`

## `useMemo`

## `useCallback`

`useCallback` uses `useMemo` to build a memoized callback; useful for

- Event handlers
- Avoid unnecessary renders in memoized children components

# Default Props

```tsx
interface MyComponentProps {
  className?: string;
}

function MyComponent({ className = "" }: MyComponentProps) {}
```

- `MyComponent.defaultProps` has been deprecated.

# Optimizations

## Memo

`React.memo` is a higher order component used to make function components only
update when the new props object is no longer shallowly equal to the old prop;
