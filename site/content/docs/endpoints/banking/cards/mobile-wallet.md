---
icon: 'http/badge-post'
---

<h1 class=article-title>Mobile Wallet Payload<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Returns an encrypted mobile wallet payload by card ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/cards/:cardId/mobile-wallet-payloads`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name | Description       | 
    | -------------- | ----------------- |
    | `cardId`       | The Unit card ID  |
    

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/cards/1234567/mobile-wallet-payloads" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey"
--data '{
    "signedNonce": "eyJle..."
}'
```

signedNonce

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
        payload: "eyJhbGciOi..."
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards-add-to-mobile-wallet/#get-mobile-wallet-payload">Unit API docs</a>


