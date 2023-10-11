---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Card<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Creat new Kard user card.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/kard-user-cards`

## Endpoint Data
=== "Body"    
    | Property Name | Description              | Type    | Required | Allowed Values                                          |
    | ------------- | ------------------------ | ------- | -------- | ------------------------------------------------------- |
    | `kardUserId`  | Kard ID of the user      | Integer | Yes      | Any                                                     |
    | `contentType` | ID of the Unit card      | String  | Yes      | Any                                                     |

    ##### Example Body

    ```js
    {
        "kardUserId": 183
        , "unitCardId": "2"
    } 
    ```

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/rewards/kard-user-cards" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
      "kardUserId": 183
      , "unitCardId": "2"
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
        "id": 207,
        "kardUserId": 183,
        "unitCardId": "2",
        "isRemoved": false,
        "createdAt": "2023-09-26T21:37:50.376Z",
        "updatedAt": null
    }
}
```


