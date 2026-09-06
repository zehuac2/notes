# API Gateway

# Important Notes

[Reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-known-issues.html)

- Headers are processed case sensitive
- Some headers are dropped

# API Key and Usage Plan

- API keys must be associated a usage plan
- A usage plan must be configured with stage, throttling and quota to be valid

# Documentation

```python
apigateway.CfnDocumentationPart(
      self,
      "APIPhotosA2PhotoTypeDocumentation",
      rest_api_id=api.rest_api_id,
      location={
          "type": "REQUEST_HEADER",
          "path": "/photos",
          "method": "PUT",
          "name": "a2-photo-type"
      },
      properties=json.dumps({
          "summary":
          "content type",
          "description":
          "should be the same as 'content-type' header"
      }))

apigateway.CfnDocumentationVersion(self,
                                   "APIDocumentationVersion",
                                   rest_api_id=api.rest_api_id,
                                   documentation_version="0.2.0")
```

# Topics

- [REST APIs](rest-api.md)
