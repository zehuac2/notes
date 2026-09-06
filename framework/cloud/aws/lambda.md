# Lambda

# Concepts

- Layer: a way to share libraries between lambda uploads. Can be used to reduce
  upload size
- Lambda’s role must have permission to CloudWatch to produce logs
- Lambda’s edge: lambda functions that run close to the user

# Deployment

- Images: bigger file size limit
- Zips

# Languages

## TypeScript

## Python

### Bundling

- Install locally: `pip install —target . .`
- Install from environment: zip the content of `site-packages` folder of the
  environment into the package containing lambda source code. The content of the
  package will look like this

  ```yaml
  handler.py sqlalchemy/ SQLAlchemy-1.4.37.dist-info/
  ...
  ```

# Power Tools

For supported languages, AWS provide “AWS Lambda Power Tools for Python”

# Lambda@Edge

# Resources

# Resources

- [A Closer Look at AWS Lambda](https://youtu.be/0_jfH6qijVY) — AWS re:Invent
