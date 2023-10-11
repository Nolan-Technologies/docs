---
icon: 'http/badge-get'
---

<h1 class=article-title>List Users<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

!!! warning
    This endpoint is powered by Veryable infrastructure.

## Overview
Retrieves Kard users. Sorting and filtering can be applied.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/kard-users?whereClause=${whereClause}&columnNames=${columNames}&values=${values}&orderByClause=${orderByClause}`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name  | Description            | Required |
    | --------------- | ---------------------- | -------- |
    | `whereClause`   | Query WHERE clause     | No       |
    | `columnNames`   | Query column name list | No       |
    | `values`        | Query value list       | No       |
    | `orderByClause` | Query ORDER BY clause  | No       |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/kard-users?whereClause=$C1 IN ( $V1 )&columnNames=userId&values=[111, 222, 333]&orderByClause=$C1 DESC" \
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
            "id": 2,
            "userId": 111,
            "isRemoved": false,
            "createdAt": "2023-02-14T22:20:11.876Z",
            "updatedAt": null
        },
        {
            "id": 1,
            "userId": 222,
            "isRemoved": false,
            "createdAt": "2023-02-14T22:20:11.759Z",
            "updatedAt": null
        },
        {
            "id": 3,
            "userId": 333,
            "isRemoved": false,
            "createdAt": "2023-02-14T22:20:14.324Z",
            "updatedAt": null
        }
    ]
}
```