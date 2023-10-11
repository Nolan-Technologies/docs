---
icon: 'http/badge-get'
---

<h1 class=article-title>Get PIN Status<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Gets the PIN status for a specified card by card ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/cards/:cardId/pin-status`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name | Description       | 
    | -------------- | ----------------- |
    | `cardId`       | The Unit card ID  |
    

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/cards/1234567/pin-status" \
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
        status: "Set"
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards#get-pin-status">Unit API docs</a>


