---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Payments<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1> 

---

## Overview
Get a list payments. A number of filters can be applied [^ 1].

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/payments/`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name          | Description                                     |
    | ----------------------- | ----------------------------------------------- |
    | `limit`                 | Maximum number of payments to return            |
    | `offset`                | The number of payments to skip                  |
    | `paymentId`             | Unit payment ID                                 |
    | `accountId`             | Unit account ID                                 |
    | `customerId`            | Unit customer ID                                |
    | `counterpartyAccountId` | Unit counterparty account ID                    |
    | `tags`                  | Unit tag                                        |
    | `status`                | Payment status                                  |
    | `type`                  | Payment type                                    |
    | `direction`             | Payment direction                               |
    | `since`                 | Date that payment occured after                 |
    | `until`                 | Date that payment occured before                |
    | `fromAmount`            | Amount that payment is greater than or equal to |
    | `toAmount`              | Amount that payment is less than or equal to    |
    | `toAmount`              | Amount that payment is less than or equal to    |
    | `recurringPaymentId`    | Unit recurring payment ID                       |
    | `paymentFeature`        | Unit payment feature                            |


## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/payments?customerId=55555&limit=3" \
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
            "type": "achPayment",
            "id": "34055",
            "amount": 15000,
            "createdAt": "2021-08-23T19:29:35.229Z",
            "description": "Kindness",
            "direction": "Credit",
            "status": "Sent",
            "counterparty": {
                "name": "Dwight",
                "routingNumber": "812345678",
                "accountNumber": "1000050319",
                "accountType": "Checking"
            }
        }
    ]
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/payments#list-payments">Unit API docs</a>