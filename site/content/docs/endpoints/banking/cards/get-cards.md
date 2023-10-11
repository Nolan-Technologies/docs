---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Cards<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get data for multiple cards. Filters can be applied. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/cards?accountId={accountId}:`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description                            | 
    | -------------- | -------------------------------------- |
    | `accountId`    | The Unit account ID of the card holder |
    

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/cards?accountId='1234567'" \
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
    "data": [
        {  
            "id": "1234",
            "accountId": "1234567",
            "createdAt": "2021-10-03T15:01:00.718Z",
            "last4Digits": "0987",
            "expirationDate": "2021-10-30T15:01:00.718Z",
            "status": "Active",
            "type": "individualDebitCard",
            "design": "blue",
            "shippingAddress": {
                street: '123 Main Street'
                , street2: 'Suite 100'
                , city: 'Dallas'
                , state: 'TX'
                , postalCode: '75201'
                , country: 'US'
            }
        },
        {
            "id": "4321",
            "accountId": "1234567",
            "createdAt": "2021-10-01T15:01:00.718Z",
            "last4Digits": "0987",
            "expirationDate": "2021-10-30T15:01:00.718Z",
            "status": "Inactive",
            "type": "individualVirtualDebitCard"
        }
    ]
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards#list-cards">Unit API docs</a>


