# Network

## `class UnityWebRequest`

- `class UnityWebRequest` has static methods that construct web request objects
  that perform different types of requests:
  - `UnityWebRequest.Post`
- The constructed request objects can be modified to send different types of
  data.
  - `json`:
    1. Set content type:
       `request.SetRequestHeader("Content-Type", "application/json");`
    2. Initialize upload manager to upload byte representation of the json
       `request.uploadHandler = new UploadHandlerRaw(jsonData);`
- Once the request objects has been configured, `request.SendWebRequest` can be
  called to perform the request
