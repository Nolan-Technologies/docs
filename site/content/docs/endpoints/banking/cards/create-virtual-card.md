---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Virtual Card<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

## Overview
Creates an individual virtual debit card for an account. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/cards`

## Endpoint Data
=== "Body"    
    | Property Name | Description                          | Type   | Required | Allowed Values               |
    | ------------- | ------------------------------------ | ------ | -------- | ---------------------------- |
    | `type`        | The type of debit card being created | String | Yes      | `individualVirtualDebitCard` |
    | `accountId`   | Unit account ID                      | String | Yes      | Any                          |

    ##### Example Body

    ```js
    {
        "type": "individualVirtualDebitCard"
        , "accountId": "1823631"
    } 
    ```

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/cards" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
        "type": "individualVirtualDebitCard"
        , "accountId": "1823631"
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
        "id": '1163133'
        , "accountid": "1823631"
        , "createdAt": "2023-08-30T20:35:58.446Z"
        , "last4Digits": "5765"
        , "expirationDate": "2027-08"
        , "status": "Active"
        , "type": "individualVirtualDebitCard"
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards#create-individual-virtual-debit-card">Unit API docs</a>


