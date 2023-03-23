# Encrypting Workflow

1. Create an `Aes` or `Rijndael` instance
2. Create an encryptor from the `Aes` instance
3. Create a stream that receives the encrypted result
4. Create a `CryptoStream` object that uses the stream in step 3
   - Can be chained
5. Write to the crypto stream
6. Either call `Clear()`, `Dispose()` or `FlushFinalBlock()` on the crypto
   stream to make sure that all data has been written to the output stream
   - `Clear()`, `Dispose()` would eventually call `FlushFinalBlock()`
7. Read content of the output stream
