---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Card<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get Kard user card data. Sorting and filtering can be applied.

## Endpoint Data
=== "Query Parameters"
    | Parameter Name  | Description            | Required |
    | --------------- | ---------------------- | -------- |
    | `whereClause`   | Query WHERE clause     | No       |
    | `columnNames`   | Query column name list | No       |
    | `values`        | Query value list       | No       |
    | `orderByClause` | Query ORDER BY clause  | No       |

    ##### Column Names
    - TODO


## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/kard-user-cards?whereClause=$C1 IN ( $V1 )&columnNames=kardUserId&values=[2]&orderByClause=$C1 DESC" \
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
            "kardUserId": 2,
            "unitCardId": "700252",
            "createdAt": "2023-02-16T16:31:06.582Z",
            "updatedAt": null
        },
        {
            "id": 3,
            "kardUserId": 2,
            "unitCardId": "700278",
            "createdAt": "2023-02-16T16:33:04.716Z",
            "updatedAt": null
        }
    ]
}
```
