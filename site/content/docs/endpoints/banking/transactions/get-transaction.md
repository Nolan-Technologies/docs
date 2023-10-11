---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Transaction<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1> 

---

## Overview
Get a single transaction by transaction id and account id. [^ 1].

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/transactions/:transactionId?:accountId`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name  | Description          |
    | --------------- | -------------------- |
    | `transactionId` | Unit transaction ID  |
    | `accountId`     | Unit account ID      |

=== "Query Parameters"
    | Parameter Name  | Description          |
    | --------------- | -------------------- |
    | `accountId`     | Unit account ID      |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/transactions/1234567?accountId=9966775" \
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
        "type": "bookTransaction",
        "id": "4256636",
        "attributes": {
            "createdAt": "2023-03-30T17:05:09.414Z",
            "amount": 33000,
            "direction": "Credit",
            "balance": 33000,
            "summary": "Veryable Inc.  |  Op Payout",
            "counterparty": {
                "name": "Veryable Inc.",
                "routingNumber": "812345678",
                "accountNumber": "1000039766",
                "accountType": "Checking"
            },
            "tags": {
                "paymentId": "8174",
                "originalType": "BOOK"
            }
        },
        "relationships": {
            "account": {
                "data": {
                    "type": "account",
                    "id": "1323259"
                }
            },
            "customer": {
                "data": {
                    "type": "customer",
                    "id": "942126"
                }
            },
            "customers": {
                "data": [
                    {
                        "type": "customer",
                        "id": "942126"
                    }
                ]
            },
            "payment": {
                "data": {
                    "type": "payment",
                    "id": "1876905"
                }
            },
            "counterpartyAccount": {
                "data": {
                    "type": "account",
                    "id": "49778"
                }
            },
            "counterpartyCustomer": {
                "data": {
                    "type": "customer",
                    "id": "49989"
                }
            },
            "org": {
                "data": {
                    "type": "org",
                    "id": "332"
                }
            }
        }
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/transactions#get-specific-transaction">Unit API docs</a>