---
icon: 'http/badge-delete'
---

<h1 class=article-title>Delete External Account<img class="article-title-image" src="/assets/images/badge-delete.svg" alt="DELETE"/></h1>

---

## Overview
Delete an ACH counterparty using counterparty ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/external-accounts/:externalAccountId`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name      | Description          |
    | ------------------- | -------------------- |
    | `externalAccountId` | Unit counterparty ID | 

## Example Request
```text
curl -i -X DELETE "https://api-s.nolantechnologies.com/v0/banking/external-accounts/1234567" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" 
```

## Example Response
```text
HTTP/1.1 204 NO CONTENT
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 332
ETag: W/"14c-PIXt+3CWLR/8LXvJ5oHPfhWsbyg"
Date: Sat, 23 Sep 2023 20:51:38 GMT
Connection: keep-alive
Keep-Alive: timeout=5


```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/payments-counterparties/#delete-one-counterparty">Unit API docs</a>