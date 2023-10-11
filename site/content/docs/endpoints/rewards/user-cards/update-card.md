---
icon: 'http/badge-patch'
---

<h1 class=article-title>Update Card<img class="article-title-image" src="/assets/images/badge-patch.svg" alt="PATCH"/></h1>

---

## Overview
Update a Kard user card by Kard user card ID.


## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/kard-user-cards/:kardUserCardId`

## Endpoint Data
=== "Body"    
    | Property Name | Description              | Type    | Required | Allowed Values                                          |
    | ------------- | ------------------------ | ------- | -------- | ------------------------------------------------------- |
    | `isRemoved`   | Status of Kard user card | Boolean | Yes      | `true`, `false`                                         |
    

    ##### Example Body

    ```js
    {
        "isRemoved": true
    } 
    ```

=== "URL Parameters"
    | Parameter Name   | Description              |
    | ---------------- | ------------------------ |
    | `kardUserCardId` | ID of the Kard user Card |

## Example Request
```text
curl -i -X PATCH "https://api-s.nolantechnologies.com/v0/rewards/kard-user-cards/1" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
       "isRemoved": true
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
        "id": 1,
        "kardUserId": 127,
        "unitCardId": "645702",
        "isRemoved": true,
        "createdAt": "2023-02-14T22:25:17.479Z",
        "updatedAt": "2023-09-26T21:50:59.656Z"
    }
}
```