# Motion

- [Overview](#overview)
- [Principles](#principles)
- [Spring Animation](#spring-animation)
- [References](#references)

# Overview

Motion should help people understand cause and effect, not distract from the
task.

- Prefer physically based motion such as springs for interactive UI
- Give fast initial feedback, then let the motion settle clearly
- Different properties do not need identical timing if staggered timing reads
  better

# Principles

- Reduce the total change in animated properties to keep motion smooth
- Increase frame rate when possible
- Motion blur can improve perceived smoothness in some contexts
- Velocities should not jump abruptly during or after interaction
- After interaction ends, continued motion should follow the interaction's
  motion vector
- Ease-out and spring-like motion often work well because they start quickly and
  finish clearly

# Spring Animation

Two useful tuning inputs are `perceptualDuration` and `bounce`.

```tsx
mass = 1
stiffness = (2 * Math.PI / perceptualDuration) ** 2
damping = ((1 - bounce) * 4 * Math.PI) / perceptualDuration, bounce >= 0
damping = 4 * Math.PI / (perceptualDuration * (1 + bounce)), bounce < 0
```

- `perceptualDuration` is measured in seconds
- Derived from [Effortless UI Spring Animation: A Two Parameter
  Approach](https://www.kvin.me/posts/effortless-ui-spring-animations)

# References

- [What Makes Good UX Animation](https://react-spring-visualizer.com)
- [Apple WWDC23: Design and build fluid interfaces](https://developer.apple.com/wwdc23/10158)
- [Animation duration guidance](https://www.nngroup.com/articles/animation-duration/)
- [Spring Animation in CSS](https://medium.com/@dtinth/spring-animation-in-css-2039de6e1a03)
- [Principles of Animation Physics](http://www.algarcia.org/Pubs/PoAP_Siggraph.pdf)
- [Newtonian interfaces](https://uxdesign.cc/newtonian-interfaces-f30b4b42ef89)
