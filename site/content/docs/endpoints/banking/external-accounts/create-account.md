---
icon: 'http/badge-post'
---

<h1 class=article-title>Create External Account<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Create an ACH counterparty for a customer using customer ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/customers/:customerId/external-accounts`

## Endpoint Data
=== "Body"    
    | Property Name   | Description                        | Type   | Required | Allowed Values                     |
    | --------------- | ---------------------------------- | ------ | -------- | ---------------------------------- |
    | `type`          | Type of counterparty               | String | Yes      | `Business`, `Person`, or `Unknown` |
    | `name`          | The name of the account holder     | String | Yes      | Any                                |
    | `routingNumber` | 9-digit ABA routing transit number | String | Yes      | Any                                |
    | `accountNumber` | Bank account number                | String | Yes      | Any                                |
    | `accountType`   | Base64 encoded file                | String | Yes      | `Checking`, `Savings`, or `Loan`   |

    ##### Example Body

    ```js
    {
        "type": "Person",
        "name": "External Bank",
        "routingNumber": "812345678",
        "accountNumber": "1001292110",
        "accountType":"Checking"
    } 
    ```
=== "URL Parameters"
    | Parameter Name | Description      |
    | -------------- | ---------------- |
    | `customerId`   | Unit customer id | 

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/customers/12345/external-accounts" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
      "type": "Person",
      "name": "External Bank",
      "routingNumber": "812345678",
      "accountNumber": "1001292110",
      "accountType":"Checking"
}'
```

## Example Response
```text
HTTP/1.1 201 CREATED
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 332
ETag: W/"14c-PIXt+3CWLR/8LXvJ5oHPfhWsbyg"
Date: Sat, 23 Sep 2023 20:51:38 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": {
        "id": "608569",
        "createdAt": "2023-09-26T18:02:36.019Z",
        "name": "External Bank",
        "routingNumber": "812345678",
        "bank": "Bank Name",
        "accountNumber": "1001292110",
        "accountType": "Checking",
        "type": "Person",
        "permissions": "CreditOnly",
        "customerId": "951039"
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/payments-counterparties/#create-counterparty">Unit API docs</a>