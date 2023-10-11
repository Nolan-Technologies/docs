---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Account<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1> 

---

!!! info
    This endpoint supports idempotency.

## Overview
Creates a checking deposit account for a customer (or customers) [^ 1]. 

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/accounts`

## Endpoint Data
=== "Body"    
    | Property Name | Description      | Type   | Required | Allowed Values |
    | ------------- | ---------------- | ------ | -------- | -------------- |
    | `customerId`  | Unit customer ID | String | Yes      | Any            |

    ##### Example Body

    ```js
    {
        "customerId": "1234567"
    } 
    ```

<!-- === "URL Parameters"
    ```text
    This endpoint has no URL parameters.
    ```

=== "Query Parameters"
    ```text
    This endpoint has no query parameters.
    ``` -->

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/accounts" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
    "customerId": "1234567"
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
    data: {
        "id": "1234567",
        "type": "depositAccount",
        "customerId": "7654321",
        "createdAt": "2023-09-01T18:42:47.184Z",
        "name": "Jamie Dimon",
        "depositProduct": "checking",
        "routingNumber": "812345678",
        "accountNumber": "1001898586",
        "currency": "USD",
        "available": 0,
        "balance": 0,
        "hold": 0,
        "status": "Open",
        "tags": {}
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/deposit-accounts#create-deposit-account">Unit API docs</a>