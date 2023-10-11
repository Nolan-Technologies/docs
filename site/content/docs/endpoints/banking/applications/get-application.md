---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Application by ID<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1> 

---

## Overview
Get an application for an individual end-customer by application id. [^ 1]. 

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/applications/:applicationId`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name  | Description         |
    | --------------- | ------------------- |
    | `applicationId` | Unit application ID |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/applications/1234567" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey"
```

## Example Response
```text
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 303
ETag: W/"12f-9INriuFpNrJxvAkZQkpx5rhqDjU"
Date: Wed, 01 Sep 2023 20:02:46 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": {
        "id": "1444994",
        "status": "Approved",
        "firstName": "John",
        "lastName": "Smith",
        "email": "jsmith@mail.com",
        "createdAt": "2023-08-28T19:24:33.205Z",
        "documents": []
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/applications#get-application-by-id">Unit API docs</a>