---
icon: 'http/badge-get'
---

<h1 class=article-title>List Disputes<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List card dispute. Paging can be applied. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/disputes?limit=${ limit }&offset=${ offset }`

=== "Query Parameters"
    | Parameter Name | Description                          | Required |
    | -------------- | ------------------------------------ | -------- |
    | `limit`        | Maximum number of disputes to return | No      |
    | `offset`       | The number of disputes to skip       | No      |


## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/disputes?limit=3&offset=1" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" 
```

## Example Response
```text
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 332
ETag: W/"14c-PIXt+3CWLR/8LXvJ5oHPfhWsbyg"
Date: Sat, 23 Sep 2023 20:51:38 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": [
        {
            "id": "53",
            "customerId": "140930",
            "amount": 123,
            "description": "sandbox dispute",
            "status": "InvestigationStarted",
            "createdAt": "2022-09-16T15:32:51.206Z"
        }
    ]
}
```





[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/disputes/#list-disputes">Unit API docs</a>