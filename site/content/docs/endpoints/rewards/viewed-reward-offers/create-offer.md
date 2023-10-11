---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Offer<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Creates a viewed reward offer.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/viewed-reward-offers`

=== "Body"    
    | Property Name | Description      | Type    | Required | Allowed Values                                          |
    | ------------- | ---------------- | ------- | -------- | ------------------------------------------------------- |
    | `userId`      | Internal user ID | Integer | Yes      | Any                                                     |
    | `kardOfferId` | Kard offer ID    | String  | Yes      | Any                                                     |
    | `merchantId`  | Kard merchant ID | String  | Yes      | Any                                                     |

    ##### Example Body

    ```js
    {
        "userId": 184,
        , "kardOfferId": "1010"
        , "merchantId": "10101"
    } 
    ```

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/rewards/viewed-reward-offers" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
      "userId": 184,
      , "kardOfferId": "1010"
      , "merchantId": "10101"
}'
```

## Example Response
```text
HTTP/1.1 201 CREATED
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 332
ETag: W/"14c-PIXt+3CWLR/8LXvJ5oHPfhWsbyg"
Date: Sat, 23 Sep 2023 20:51:38 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": {
        "data": {
        "kardUserId": 380,
        "kardOfferId": "1010",
        "merchantId": "10101",
        "createdAt": "2023-09-26T23:29:56.041Z",
        "updatedAt": null
    }
    }
}
```