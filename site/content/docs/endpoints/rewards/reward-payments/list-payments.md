---
icon: 'http/badge-get'
---

<h1 class=article-title>List Payments<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List reward payments. Filtering and sorting can be applied.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/reward-payments`

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
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/reward-payments?whereClause=$C1 IN ( $V1 )&columnNames=id&values=[1,2,3]&orderByClause=$C1 DESC" \
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
            "id": 3,
            "rewardId": 3,
            "paymentId": 7512,
            "createdAt": "2023-02-16T16:35:29.766Z",
            "updatedAt": null
        },
        {
            "id": 2,
            "rewardId": 2,
            "paymentId": 7511,
            "createdAt": "2023-02-16T16:33:38.706Z",
            "updatedAt": null
        },
        {
            "id": 1,
            "rewardId": 1,
            "paymentId": 7509,
            "createdAt": "2023-02-14T22:25:39.667Z",
            "updatedAt": null
        }
    ]
}
```