# Access Tokens

[Behind GitHub’s new authentication token formats](https://github.blog/engineering/behind-githubs-new-authentication-token-formats/)

## UUID?

1. **Not Designed for Security**: According to RFC 4122, UUIDs should not be
   assumed to be hard to guess and are not recommended as "security
   capabilities" (i.e., identifiers whose possession grants
   access)[2](https://rietta.com/blog/uuid-api-security-token-video/)[14](https://datatracker.ietf.org/doc/html/rfc4122).
2. **Predictability Risks**:
   - UUIDv1 includes timestamps and MAC addresses, which can expose sensitive
     information and make them
     predictable[9](https://realizesec.com/blog/sandwich-attacks-exploiting-uuid-v1)[25](https://www.linkedin.com/pulse/expanding-uuidv1-security-issues-chaim-sanders).
   - Poor implementation of random number generators (e.g., using
     non-cryptographic PRNGs) can make UUIDv4
     predictable[3](https://coalfire.com/the-coalfire-blog/appsec-concerns-uuid-generation)[8](https://www.nccgroup.com/us/research-blog/toxic-tokens-using-uuids-for-authorization-is-dangerous-even-if-they-re-cryptographically-random/).
3. **No Built-in Cryptographic Protections**: UUIDs do not include mechanisms to
   prevent tampering, replay attacks, or unauthorized use. For example, they
   lack expiration times, signing, or encryption features that other token
   formats like JWT
   provide[13](https://stackoverflow.com/questions/5244455/best-practices-for-sessionid-authentication-token-generation/7573986)[16](https://security.stackexchange.com/questions/190526/is-it-secure-to-use-uuid-as-authentication).
