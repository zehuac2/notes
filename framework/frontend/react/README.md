# React

Various notes on React.

# State

```text
state => newState
state => newState, effects
state, event => newState
state, event => newState, effects
```

- Effects occur between states

# Components

- Components can be built using
  - [Class Components](class-components.md)
  - [Functional Components](functional-components.md)

## Props

- The `key` prop is used internally by React and is not passed to components.
- The `ref` prop is passed to components from React 19.
- Type checking should be done using TypeScript or similar solutions.

## Render

A component's rendering function is only called when the component itself or its
parent becomes dirty (this behavior appears to be undocumented)

# Rendering

## Event Delegation

`ReactDOM` binds events to the rendering root element. When an event occurs,
`ReactDOM` uses event delegation to dispatch the event to handlers in the
appropriate components, starting from the rendering root.

## Hydration

To properly hydrate a React app, the statically rendered HTML must match the
client-side rendered HTML

## Concurrent Mode

- [Avoid using CSS-in-JS libraries that inject new styles with each component in Concurrent Mode](https://dev.to/srmagura/why-were-breaking-up-wiht-css-in-js-4g9b):
  this creates a performance bottleneck as React yields to the browser for
  recalculation with each new component's CSS.
  - Alternatives
    - [stylex](https://stylex-docusaurus.vercel.app/)

```jsx
const [isPending, startTransition = useTransition();
```

- Every user interaction has two phases:
  - **Urgent updates**: provide immediate UI feedback—delays here create a
    jarring experience
    - By default, state mutations are considered urgent
  - **Transition feedback**: handles UI state transitions where users expect
    some delay
    - `startTransition(() => {})` marks state mutations in the closure as
      transitions
    - Transition updates have lower priority than urgent updates and can be
      interrupted by higher-priority updates
    - `isPending` enables intermediate feedback display—if the transition
      completes quickly enough, this intermediate state won't be visible

## Virtual DOM

A virtual DOM is created for every update, and then an interpreter compare the
virtual dom with the real DOM and try to update effectively

- Advantages
  - Virtual DOM can be created using any language, JSX, JavaScript or Dart
- Disadvantages:
  - [Virtual DOM is pure overhead](https://svelte.dev/blog/virtual-dom-is-pure-overhead);
    it is possible to achieve similar programming model without virtual DOM
  - JSX cannot be optimized at build time

# Best Practices

## TypeScript

https://react-typescript-cheatsheet.netlify.app/

# Ecosystem

## Hot Reload

Hot reload can be achieved in Webpack using

- [react-refresh](https://github.com/facebook/react/tree/master/packages/react-refresh)
- [react-refresh-webpack-plugin](https://github.com/pmmmwh/react-refresh-webpack-plugin)

## Frameworks

- `create-react-app`: great for single page applications
- `Gatsby.js`: great for static sites
- `Next.js`: require backend servers to support all features

## Libraries

- react-stately
- react-aria
- react-hook-form

## Animation

[Animation](https://app.notion.com/p/Animation-1caac069d593803ca1c9fd8b0136aa81?pvs=21)

Queried via [perplexity.ai](http://perplexity.ai) on February 12, 2025

| **Feature**            | **Motion**                          | **React Spring**                  | **GSAP (GreenSock)**                 |
| ---------------------- | ----------------------------------- | --------------------------------- | ------------------------------------ |
| **Animation Type**     | Gesture-driven, declarative         | Physics-based, natural motion     | Timeline-based, precise control      |
| **Ease of Use**        | Beginner-friendly                   | Moderate learning curve           | Steeper learning curve               |
| **Performance**        | Optimized for React                 | Efficient for moderate complexity | Best for high-complexity animations  |
| **Gestures**           | Built-in (drag, hover, tap)         | Requires external libraries       | Plugins or custom setup              |
| **Scroll Animations**  | Native support with **`useInView`** | Requires external tools           | Advanced via ScrollTrigger plugin    |
| **SVG/Canvas Support** | Basic SVG animations                | Limited                           | Advanced (path morphing, transforms) |
| **Bundle Size**        | Moderate                            | Lightweight                       | Larger (with plugins)                |
| **Community**          | Strong React-focused community      | Growing ecosystem                 | Extensive, cross-platform            |

Motion is the latest version of Framer Motion.
