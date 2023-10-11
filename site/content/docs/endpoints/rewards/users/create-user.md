---
icon: 'http/badge-post'
---

<h1 class=article-title>Create User<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

!!! warning
    This endpoint is powered by Veryable infrastructure.

## Overview
Creates a new Kard user.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/kard-users`

## Endpoint Data
=== "Body"    
    | Property Name | Description              | Type    | Required | Allowed Values                                          |
    | ------------- | ------------------------ | ------- | -------- | ------------------------------------------------------- |
    | `userId`      | Desired internal user ID | Integer | Yes      | Any                                                     |

    ##### Example Body

    ```js
    {
        "userId": 187
    } 
    ```

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/rewards/kard-users" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
      "userId": 189
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
        "id": 455,
        "userId": 189,
        "isRemoved": false,
        "createdAt": "2023-09-26T20:31:02.109Z",
        "updatedAt": null
    }
}
```




