Actions associated with actions with arguments. If the argument is seen by the
parser, then the action is triggered.

# Actions

- `store`: default action, store the value associated with the argument into the
  namespace object returned by the parser
- `store_true`, `store_false`: if the argument is seen by the parser without
  providing any values, the parser stores either true or false in the namespace
  - If an argument is associated with this action, the argument must not be
    associated with any value (aka. `--flag=true`)
- `store_const`: assuming the `const` argument is provided by when the argument
  is added, the value of the `const` would be stored in the namespace if the
  flag is seen
  - The argument from the commandline must not be associated with an explicit
    values, just like when the action is `store_true`, `store_false`
