---
icon: 'http/badge-post'
---

<h1 class=article-title>Replace Card<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Creates and ships a replacement physical debit card to an individual. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/cards/:cardId/replace`

## Endpoint Data
=== "Body"    
    | Property Name     | Description                                    | Type   | Required | Allowed Values               |
    | ----------------- | ---------------------------------------------- | ------ | -------- | ---------------------------- |
    | `shippingAddress` | The address that the card should be shipped to | Object | Yes      | Any                          | 

=== "URL Parameters"
    | Parameter Name | Description      | 
    | -------------- | ---------------- |
    | `cardId`       | The Unit card ID |
    

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/cards/123456/replace" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" 
```

## Example Response
```text
HTTP/1.1 201 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 332
ETag: W/"14c-PIXt+3CWLR/8LXvJ5oHPfhWsbyg"
Date: Sat, 23 Sep 2023 20:51:38 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    "data": {
        "id": "123456",
        "accountId": "160275",
        "createdAt": "2021-12-16T17:42:19.442Z",
        "last4Digits": "4914",
        "expirationDate": "2024-12",
        "status": "Inactive",
        "type": "individualDebitCard",
        "design": "black",
        "shippingAddress": {
            street: '123 Main Street',
            street2: '225',
            city: 'Dallas',
            state: 'TX',
            postalCode: '75201',
            country: 'US'
        }
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards#replace-card">Unit API docs</a>


