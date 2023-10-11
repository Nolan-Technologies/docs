---
icon: 'http/badge-get'
---

<h1 class=article-title>List Rewards<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List reward. Filtering and sorting can be applied.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/rewards`

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
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/rewards?whereClause=$C1 IN ( $V1 )&columnNames=id&values=[1,2,3]&orderByClause=$C1 DESC" \
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
            "kardUserId": 2,
            "rewardableTransactionId": 3,
            "rewardType": "NATIONAL",
            "amount": 3000,
            "userAmount": 2011,
            "merchantName": "Spunky Frames",
            "kardOfferId": "6321ef146cf5970009aa3495",
            "postDineInUrl": null,
            "createdAt": "2023-02-16T16:35:29.465Z",
            "updatedAt": null
        },
        {
            "id": 2,
            "kardUserId": 2,
            "rewardableTransactionId": 2,
            "rewardType": "NATIONAL",
            "amount": 322,
            "userAmount": 216,
            "merchantName": "Spunky Frames",
            "kardOfferId": "6321ef146cf5970009aa3495",
            "postDineInUrl": null,
            "createdAt": "2023-02-16T16:33:38.387Z",
            "updatedAt": null
        },
        {
            "id": 1,
            "kardUserId": 127,
            "rewardableTransactionId": 1,
            "rewardType": "NATIONAL",
            "amount": 195,
            "userAmount": 130,
            "merchantName": "Computerly",
            "kardOfferId": "6321f8e24a07ec0009b5b7ee",
            "postDineInUrl": null,
            "createdAt": "2023-02-14T22:25:38.035Z",
            "updatedAt": null
        }
    ]
}
```
