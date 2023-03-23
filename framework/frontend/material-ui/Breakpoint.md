# Concepts

- Breakpoints are handled by the API in terms of ranges;
  - Each range starts from its respective key width inclusive and end at the
    next key width exclusive;
  - Ex. The value of the key "md" is 960, and that of "lg" is 1280, therefore
    the range "md" is [960, 1280); - Up "md" is [960, infinity);
    - Down "md" is [0, 1280);
