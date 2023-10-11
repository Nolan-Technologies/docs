---
icon: 'http/badge-get'
---

<h1 class=article-title>List Offers<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List viewed reward offers. Filtering and sorting can be applied.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/viewed-reward-offers`

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
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/viewed-reward-offers?whereClause=$C1 IN ( $V1 )&columnNames=kardUserId&values=[315]&orderByClause=$C1 DESC" \
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
            "kardUserId": 315,
            "kardOfferId": "615cc839498bed0009bc06c9",
            "merchantId": "615cc839498bed0009bc06c6",
            "createdAt": "2023-07-28T18:24:38.650Z",
            "updatedAt": null
        },
        {
            "kardUserId": 315,
            "kardOfferId": "615cc7f2498bed0009bbfd9f",
            "merchantId": "615cc7f2498bed0009bbfd9c",
            "createdAt": "2023-07-28T19:14:42.369Z",
            "updatedAt": null
        }
    ]
}
```