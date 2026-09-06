# REST API

# Concepts

- Resource: a REST path
- Method: methods like GET, OPTION, etc.
- Integration: how a method is handled
  - **Methods must specify**:
    - **How method requests can be translated** into integration request
    - **How integration response can be translated** into method response
- Binary mediate types must be explicitly specified

# Binary Media Types

- Binary media types must be specified: if binary media types are not specified,
  binary medias will be messed up, especially during response.

## Response

- Leave content along: don’t set content handling

# Integrations

- Parameter mapping
  - Static value: `"method.response.header.Access-Control-Allow-Origin": "'*'"`

## S3

```bash
api = apigateway.RestApi(
	  self,
    "API",
    binary_media_types=["image/png", "image/jpeg"])

photos_model = api.add_model("Photos", schema={
    "type": apigateway.JsonSchemaType.STRING,
    "format": "binary"
})

api_photos = api.root.add_resource("photos")
api_photos.add_method(
    "PUT",
    apigateway.AwsIntegration(
        service="s3",
        integration_http_method="PUT",
        path=f"{photos.bucket_name}/test",
        options=apigateway.IntegrationOptions(
            credentials_role=photos_put_role,  # type: ignore
            request_parameters={
                "integration.request.header.x-amz-meta-customLabels": "method.request.header.A2-Custom-Labels"
            },
            integration_responses=[
                apigateway.IntegrationResponse(status_code="200")
            ]
        )
    ),
    api_key_required=True,
    request_parameters={
        "method.request.header.A2-Custom-Labels": True
    },
    request_models={
        "image/png": photos_model,
        "image/jpeg": photos_model
    },
    method_responses=[
        apigateway.MethodResponse(status_code="200")
    ]
)
```

## Lambda

```yaml
/path:
  post:
		x-amazon-apigateway-integration:
      type: aws_proxy
	    httpMethod: POST
      uri: arn:aws:apigateway:${vars.region}:lambda:path/2015-03-31/functions/${vars.lf0_arn}/invocationsarn:aws:apigateway:${vars.region}:lambda:path/2015-03-31/functions/${vars.lf0_arn}/invocations
```

- Lambda integration by default does not pass method request body. Solution:
  pass request as `event` to lambda
