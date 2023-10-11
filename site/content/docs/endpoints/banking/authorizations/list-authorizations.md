---
icon: 'http/badge-get'
---

<h1 class=article-title>List Authorizations<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List card authorizations. Filtering and sorting can be applied. Paging is available only when filtering by customer id or account id. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/authorizations?customerId=${ customerId }&status=${ status }`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description                                                              | Required |
    | -------------- | ------------------------------------------------------------------------ | -------- |
    | `customerId`   | Unit customer ID                                                         | Yes      |
    | `status`       | Authorization status (`Authorized` only)                                 | Yes      |


## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/authorizations?customerId=12345&status=Active" \
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
            "id": "90"
            , "status": "Authorized"
            , "amount": 2000
            , "description": "Europcar Mobility Group |**0019 "
            , "createdAt": "2023-01-16T07:40:44.970Z"
            , "cardLast4Digits": "7979"
            , "merchant": {
                "name": "Europcar Mobility Group"
                , "category": "EUROP CAR"
                , "location": "Cupertino, CA"
            }
        }
    ]
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards-authorizations#list-authorizations">Unit API docs</a>