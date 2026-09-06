# Lex

- Version
- Alias: alias can point to aliases of the bot. **Other components of the
  application use alias** to refer to the bot. Once the alias has been changed
  to a newer version. Other components of the application **do not need to be
  updated**
- Intent
  - Sample utterances: trigger for an intent
  - Context: inference across statements
  - Utterance: possible sentences that express the intent
  - Slot: have lex extract specific information?
    - Unless all slots are filled, Lex will not continue to next question
  - Code hook: lambda for validation and fulfillment process
  - Must create new version after updating intent
- Intent classification confidence score threshold: low value may pickup typos
