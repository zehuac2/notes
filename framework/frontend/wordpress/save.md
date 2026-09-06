# Save

## Save Component

- Save component cannot use hooks. Wordpress use a custom React implementation.
  During serialization of the save component, hooks would throw errors that
  won’t be logged. Errors during serialization would result in empty strings
  being stored in the database. When the page is loaded again, validation would
  fail because `save` and the result from database produce different results.
