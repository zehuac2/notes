# CSS Interpretation

CSS are evaluated from right to left. Once a mismatch occured, the browsers
would stop matching

# Performance of Different Types of Selectors

```css
#main-navigation {
} /* ID (Fastest) */
body.home #page-wrap {
} /* ID */
.main-navigation {
} /* Class */
ul li a.current {
} /* Class *
ul {   }                    /* Tag */
ul li a {
} /* Tag */
* {
} /* Universal (Slowest) */
#content [title='home']; /* Universal */
```

- The deeper the nesting, the worse the performance
