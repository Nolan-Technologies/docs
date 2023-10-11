---
icon: 'http/badge-get'
---

<h1 class=article-title>List Accounts<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List counterparties for a customer by customer ID. Filtering and paging can be applied.. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/customers/:customerId/external-accounts`

=== "URL Parameters"
    | Parameter Name  | Description      |
    | --------------- | -----------------|
    | `customerId`    | Unit customer ID |


## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/customers/12345/external-accounts" \
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
        [
            {
                "id": "562701",
                "createdAt": "2023-08-29T21:27:51.903Z",
                "name": "External Bank",
                "routingNumber": "812345678",
                "bank": "Bank Name",
                "accountNumber": "1001292110",
                "accountType": "Checking",
                "type": "Person",
                "permissions": "CreditOnly",
                "customerId": "951039"
            },
            {
                "id": "568040",
                "createdAt": "2023-08-31T20:50:56.627Z",
                "name": "External Bank",
                "routingNumber": "812345678",
                "bank": "Bank Name",
                "accountNumber": "1001292110",
                "accountType": "Checking",
                "type": "Person",
                "permissions": "CreditOnly",
                "customerId": "951039"
            }  
        ]
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/payments-counterparties/#list-counterparties">Unit API docs</a>