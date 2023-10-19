---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Fee<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1> 

---

## Overview
Creates a fee for an account. [^ 1].

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/accounts/:accountId/fees`

## Endpoint Data
=== "Body"    
    | Property Name | Description                               | Type    | Required | Allowed Values                                          |
    | ------------- | ----------------------------------------- | ------- | -------- | ------------------------------------------------------- |
    | `amount`      | The amount of the fee, in cents           | Integer | Yes      | Any                                                     |
    | `description` | The description of the fee (50 chars max) | String  | Yes      | Any                                                     |

    ##### Example Body

    ```js
    {
        "amount": 100
    ,   "description": "A 1 dollar fee."
    } 
    ```

=== "URL Parameters"
    | Parameter Name  | Description          |
    | --------------- | -------------------- |
    | `accountId`     | Unit account ID      |

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/accounts/123456/fees" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data '{
    "amount": 100
    , "description": "A 1 dollar fee."
}'
```

## Example Response
```text
HTTP/1.1 201 CREATED
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 303
ETag: W/"12f-9INriuFpNrJxvAkZQkpx5rhqDjU"
Date: Wed, 01 Sep 2023 20:02:46 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    data: {
        "id": "5446547",
        "accountId": "1823631",
        "amount": 100,
        "description": "A 1 dollar fee."
    }

}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/fees#create-fee">Unit API docs</a>