---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Payment<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1> 

---

## Overview
Create an ACH payment to a counterparty [^ 1].


## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/accounts/:accountId/payments`


## Endpoint Data
=== "Body"
    | Property Name           | Description                                   | Type    | Required | Allowed Values |
    | ----------------------- | --------------------------------------------- | ------- | -------- | ---------------|
    | `amount`                | The payment amount in cents                   | Integer | Yes      | Any            |
    | `counterpartyAccountId` | The Unit account ID of the counterparty       | String  | Yes      | Any            |
    | `description`           | Description of the payment (max. 10 chars)    | String  | Yes      | Any            |
    | `addenda`               | Additional payment description (max 80 chars) | String  | No       | Any            |
    | `originalType`          | Type of the payment                           | String  | Yes      | `ACH`          |

    ##### Example Body

    ```js
    {
        "amount": 500
        , "counterpartyAccountId": "562701"
        , "description": "ACH PYMT"
        , "addenda": "Hardik's Tests are daa best"
        , "originalType": "ACH"
    } 
    ```

=== "URL Parameters"
    | Parameter Name  | Description     |
    | --------------- | --------------- |
    | `accountId`     | Unit account ID |


## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/accounts/123456/payments" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
--data '{
    "amount": 500
    , "counterpartyAccountId": "562701"
    , "description": "ACH PYMT"
    , "addenda": "Hardik's Tests are daa best"
    , "originalType": "ACH"
}'
```

## Example Response
```text
HTTP/1.1 201 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 303
ETag: W/"12f-9INriuFpNrJxvAkZQkpx5rhqDjU"
Date: Wed, 01 Sep 2023 20:02:46 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": {
        "id": "2822336",
        "type": "achPayment",
        "amount": 500,
        "createdAt": "2023-09-24T16:59:28.923Z",
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

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/ach-origination">Unit API docs</a>