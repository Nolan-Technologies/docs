---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Transactions<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1> 

---

## Overview
Get a list of transactions by customer id or account id. [^ 1].

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/transactions?:customerId&:accountId:limit&:offset`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name  | Description                              |
    | --------------- | ---------------------------------------- |
    | `customerId`    | Unit customer ID                         |
    | `accountId`     | Unit account ID  (optional)              |
    | `limit`         | Maximum number of transactions to return |
    | `offset`        | The number of transactions to skip       |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/transactions?customerId=44444&limit=3&offset=1" \
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
    "data": [
        {
            "type": "bookTransaction",
            "id": "101526",
            "createdAt": "2021-10-19T15:11:59.452Z",
            "amount": 200,
            "direction": "Credit",
            "balance": 45200,
            "summary": "April Oneil  |  Book payment",
            "counterparty": {
                "name": "April Oneil",
                "routingNumber": "812345678",
                "accountNumber": "1000038809",
                "accountType": "Checking"
            }
        },
        {
            "type": "bookTransaction",
            "id": "55453",
            "createdAt": "2021-08-23T19:29:35.297Z",
            "amount": 15000,
            "direction": "Credit",
            "balance": 45000,
            "summary": "Olivier Ndikumana  |  Kindness",
            "counterparty": {
                "name": "Olivier Ndikumana",
                "routingNumber": "812345678",
                "accountNumber": "1000051030",
                "accountType": "Checking"
            },
            "tags": {
                "by": "Igal"
            }
        },
        {
            "type": "bookTransaction",
            "id": "54548",
            "createdAt": "2021-08-20T15:42:27.882Z",
            "amount": 15000,
            "direction": "Credit",
            "balance": 30000,
            "summary": "Ryan O'saur  |  ACH PYMT",
            "counterparty": {
                "name": "Ryan O'saur",
                "routingNumber": "812345678",
                "accountNumber": "1000050007",
                "accountType": "Checking"
            },
            "tags": {
                "by": "Igal"
            }
        }
    ]
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/transactions#list-transactions">Unit API docs</a>