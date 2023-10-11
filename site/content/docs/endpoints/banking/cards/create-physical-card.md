---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Physical Card<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Creates an individual physical debit card for an account. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/cards`

## Endpoint Data
=== "Body"    
    | Property Name     | Description                                    | Type   | Required | Allowed Values               |
    | ----------------- | ---------------------------------------------- | ------ | -------- | ---------------------------- |
    | `type`            | The type of debit card being created           | String | Yes      | `individualDebitCard`        |
    | `accountId`       | Unit account ID                                | String | Yes      | Any                          |
    | `design`          | The desired card design                        | String | No       | Any                          |
    | `shippingAddress` | The address that the card should be shipped to | Object | Yes      | Any                          |

    ##### Example Body

    ```js
    {
        "type": "individualDebitCard"
        , "accountId": "1334081"
        , "design": "blue"
        , "shippingAddress": {
            "street": "123 Main St"
            , "street2": "Suite 100"
            , "city": "Dallas"
            , "state": "TX"
            , "postalCode": "75201"
            , "country": "US"
        }
    } 
    ```

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/cards" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
        "type": "individualDebitCard"
        , "accountId": "1334081"
        , "design": "blue"
        , "shippingAddress": {
            "street": "123 Main St"
            , "street2": "Suite 100"
            , "city": "Dallas"
            , "state": "TX"
            , "postalCode": "75201"
            , "country": "US"
        }
}'
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
        id: '1163202',
        accountId: '1334081',
        createdAt: '2023-08-30T20:57:54.048Z',
        last4Digits: '6144',
        expirationDate: '2027-08',
        status: 'Inactive',
        design: 'blue',
        type: 'individualDebitCard',
        shippingAddress: {
            street: '123 Main St',
            street2: 'Suite 100',
            city: 'Dallas',
            state: 'TX',
            postalCode: '75201',
            country: 'US'
        }
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards#create-individual-debit-card">Unit API docs</a>


