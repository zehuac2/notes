# Performance

- [Overview](#overview)
- [Input Timing](#input-timing)

# Overview

Performance is part of UX because latency changes how people interpret state and
control.

- Measure interactive performance with the [RAIL model](https://web.dev/rail/)
- Show feedback quickly so users know the system received the action
- If work takes long enough to be noticed, show explicit progress or loading

# Input Timing

- Debounce: run a function after inactivity has passed
- Throttle: run a function at most once per interval
- Use debounce when the user is likely to pause before you act
- Use throttle when updates should stay responsive but bounded
