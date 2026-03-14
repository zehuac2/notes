# Asymmetric Encryptions

## Key Structure

The receiver has two keys:

- **Public Key**: given to the sender to encrypt the message
- **Private Key**: kept securely to decrypt the message

Keys are generated using RSA algorithms. The two keys are mathematically
related, but having one key does not lead to having the other key.

## Encryption Process

The sender uses the **public key** of the receiver to encrypt the message. Only
the receiver with the corresponding private key can view the message.

## Algorithms

### RSA

RSA function can't accommodate messages that are longer than the key; we solve
that problem with block cipher modes.
