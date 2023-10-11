---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Payment<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1> 

---

## Overview
Get a payment by id. [^ 1].

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/payments/:paymentId`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name  | Description      |
    | --------------- | ---------------- |
    | `paymentId`     | Unit payment ID  |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/payments/12345678" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey"
```

## Example Response
```text
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 303
ETag: W/"12f-9INriuFpNrJxvAkZQkpx5rhqDjU"
Date: Wed, 01 Sep 2023 20:02:46 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": {
        "id": "12345678",
        "type": "achPayment",
        "amount": 150000,
        "createdAt": "2023-08-29T22:44:21.750Z",
        "description": "ACH PYMT",
        "direction": "Credit",
        "status": "Sent",
        "originalType": "ACH",
        "counterparty": {
            "name": "External Bank",
            "routingNumber": "812345678",
            "accountNumber": "1001292110",
            "accountType": "Checking"
        }
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/payments#get-specific-payment">Unit API docs</a>