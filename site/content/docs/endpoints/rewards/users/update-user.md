---
icon: 'http/badge-patch'
---

<h1 class=article-title>Update User<img class="article-title-image" src="/assets/images/badge-update.svg" alt="UPDATE"/></h1>

---

!!! warning
    This endpoint is powered by Veryable infrastructure.

## Overview
Updates an existing Kard user.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/kard-users/:kardUserId`

## Endpoint Data
=== "Body"    
    | Property Name | Description                | Type    | Required | Allowed Values                                          |
    | ------------- | -------------------------- | ------- | -------- | ------------------------------------------------------- |
    | `isRemoved`   | Removal status of the user | Boolean | Yes      | `true`, `false`                                         |
    

    ##### Example Body

    ```js
    {
        "isRemoved": true
    } 
    ```

=== "URL Parameters"
    | Parameter Name | Description    |
    | -------------- | -------------- |
    | `kardUserId`   | Kard user ID   |

## Example Request
```text
curl -i -X PATCH "https://api-s.nolantechnologies.com/v0/rewards/kard-users/454" \
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
        "id": 189,
        "userId": 455,
        "isRemoved": true,
        "createdAt": "2023-02-21T17:05:15.516Z",
        "updatedAt": "2023-09-26T20:50:50.707Z"
    }
}
```