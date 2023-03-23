# Creating Mocks

```ts
const mockA = jest.fn(() => {});
const mockB = jest.fn();
```

# Testing Mocks

Mock function contains `.mock` property that contain the function's usage

```ts
expect(mock).toHaveBeenCalled();
```

## Resetting Mocks

- `.mockClear`: clear all usage data of a mock function
