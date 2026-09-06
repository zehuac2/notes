# Browser

# Animation

- Use `element.scrollHeight` to determine its content height, regardless if it
  is displayed

# View Transitions

- What is this?

# Observers

## Intersection Observer

- In some browsers, if the user scrolls slowly, the browser may emit
  intersection ratio super close to the threshold but smaller than the
  threshold. `isIntersecting` is a more reliable indicator if an element is
  becoming visible.
- Don’t scale up the element being observed: scale up → clipped → less visible →
  scale down → more visible → scale up

# Focus

- `focusin` event : after an element **or its children** has received focus

# Debugging

- [Chrome debugging might require setting `-remote-allow-origins=*`](https://youtrack.jetbrains.com/issue/WEB-60002/Blank-page-opened-aboutblank-when-debugging-JS-PHP-in-Chrome-using-custom-data-or-not#focus=Comments-27-6983620.0-0)

# Other Resources

- [https://www.patterns.dev](https://www.patterns.dev/)
