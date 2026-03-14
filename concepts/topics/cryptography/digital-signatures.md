# Digital Signatures

Signatures are used to ensure integrity (the data received is not tampered
with).

## Creating a Signature

1. **Decrypt** the message using the private key to get the signature
2. **Send** the signature using the public key (given to the receiver)
3. The result from step 2 should equal the original message if integrity is
   maintained

## Handling Long Messages

As RSA function cannot process long messages, we use a hash of the message
instead:

1. Decrypt the hash
2. Encrypt the signature
3. Compare hashes
