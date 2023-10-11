---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Transaction<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Create new rewardable transaction.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/rewardable-transactions`

## Endpoint Data
=== "Body"    
    | Property Name       | Description                              | Type   | Required | Allowed Values                                          |
    | ------------------- | ---------------------------------------- | ------ | -------- | ------------------------------------------------------- |
    | `unitCardId`        | ID of the corresponding Unit card        | String | Yes      | Any                                                     |
    | `unitTransactionId` | ID of the corresponding Unit transaction | String | Yes      | Any                                                     |

    ##### Example Body

    ```js
    {
        "unitCardId": "1"
        , "unitTransactionId": "123456789"
    } 
    ```

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/rewards/rewardable-transactions" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
      "unitCardId": "1"
      , "unitTransactionId": "123456789"
}'
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
        "id": 111,
        "kardUserCardId": 156,
        "unitTransactionId": "123456789",
        "createdAt": "2023-09-26T22:33:53.402Z",
        "updatedAt": null
    }
}
```

