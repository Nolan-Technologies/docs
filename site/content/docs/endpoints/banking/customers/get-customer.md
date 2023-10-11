---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Customer by ID<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get customer data using customer ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/customers/:customerId`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name | Description           | 
    | -------------- | --------------------- |
    | `customerid`   | The Unit customer ID  |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/customers/12345" \
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
        "id":, "12345" 
        "createdAt": "2020-05-12T19:41:04.123Z",
        "firstName": "John",
        "lastName": "Smith",
        "address": {
            street: '123 Main Street'
            , street2: 'APT 5'
            , city: 'Brooklyn'
            , state: 'NY'
            , postalCode: '11201'
        },
        "email": "jsmith@mail.com",
        "phone": {
            countryCode: '1'
            , number: '5555555555'
        }
    }
}
```






[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/customers#get-specific-customer">Unit API docs</a>