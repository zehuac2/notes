# Scroll View

- Put the scroll view into a child canvas with pixel-perfect disabled
  - When you scroll, fuzzy pixels don't matter
- Pool (enable/disable, reuse objects) to decrease built times
- Modify scroll rect code so that it stops scrolling when the velocity is small
