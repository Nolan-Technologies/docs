---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Reward<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get a single reward by ID.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/rewards/rewardId`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name  | Description      |
    | --------------- | ---------------- |
    | `rewardId`      | ID of the reward |

    ##### Column Names
    - TODO

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/rewards/1" \
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
    "data": {
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
}
```