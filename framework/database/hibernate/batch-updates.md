# Batch Updates

During batch updates, these operations should be called in order

1. `session.flush`; if flush mode is set to auto, this is automatically called
   during commit
2. `connection.commit`; otherwise the locks would not be released
3. `session.clear`; evict touched entities from Hibernate session's management
   to save resource
