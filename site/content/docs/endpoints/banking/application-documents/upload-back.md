---
icon: 'http/badge-post'
---

<h1 class=article-title>Upload Back<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1> 

---

!!! warning
    This endpoint needs to be reviewed by Veryable Engineering. If you are working with this endpoint, please contact Brandon.

## Overview
Uploads the back side of a document. [^ 1].

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/applications/:applicationId/documents/:documentId/back`

## Endpoint Data
=== "Body"    
    | Property Name | Description              | Type   | Required | Allowed Values                                          |
    | ------------- | ------------------------ | ------ | -------- | ------------------------------------------------------- |
    | `file`        | Base64 encoded file      | String | Yes      | Any                                                     |
    | `contentType` | Description of file type | String | Yes      | `image/png`, `image/jpeg`, `application/pdf`            |

    ##### Example Body

    ```js
    {
        "file": "1011101111001"
        , "contentType": "image/jpeg"
    } 
    ```

=== "URL Parameters"
    | Parameter Name  | Description          |
    | --------------- | -------------------- |
    | `applicationId` | Unit application ID  |
    | `documentId`    | Unit document ID     |

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/applications/123/documents/3/back" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
    "file": "1011101111001"
    , "contentType": "image/jpeg"
}'
```

## Example Response
```text
HTTP/1.1 201 CREATED
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 303
ETag: W/"12f-9INriuFpNrJxvAkZQkpx5rhqDjU"
Date: Wed, 01 Sep 2023 20:02:46 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    data: {
        "id": "3"
        "documentType": "Passport"
        "status": "Approved"
        "description": String
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/application-documents#upload-document-back-side">Unit API docs</a>