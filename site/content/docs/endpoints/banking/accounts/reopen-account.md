---
icon: 'http/badge-post'
---

<h1 class=article-title>Reopen Account<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Reopens a checking deposit account for a customer. [^ 1]

!!! warning
    Reopening an account will <b>not</b> reopen cards associated with the account. Closed cards cannot be reactivated.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/accounts/:accountId/reopen`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name | Description     |
    | -------------- | --------------- |
    | `accountId`    | Unit account ID |

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/accounts/1234567/reopen" \
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
        "id": "1234567",
        "type": "depositAccount",
        "customerId": "1086957",
        "createdAt": "2023-08-26T16:05:10.116Z",
        "name": "Jamie Dimon",
        "depositProduct": "checking",
        "routingNumber": "812345678",
        "accountNumber": "1001784432",
        "currency": "USD",
        "available": -200,
        "balance": -200,
        "hold": 0,
        "status": "Open",
        "tags": {}
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/deposit-accounts#reopen-account">Unit API docs</a>