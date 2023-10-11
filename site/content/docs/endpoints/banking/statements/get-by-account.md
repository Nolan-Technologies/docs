---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Statements by Account ID<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
List statements for a specific account ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/statements?accountId={accountId}`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description     | Required |
    | -------------- | --------------- | -------- |
    | `accountId`    | Unit account ID | Yes      |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/statements?accountId=123456" \
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
            "type": "accountStatementDTO",
            "id": "20962733",
            "period": "2023-08",
            "accountId": "1334081",
            "customerId": "947778"
        },
        {
            "type": "accountStatementDTO",
            "id": "19157045",
            "period": "2023-07",
            "accountId": "1334081",
            "customerId": "947778"
        },
        {
            "type": "accountStatementDTO",
            "id": "17938214",
            "period": "2023-06",
            "accountId": "1334081",
            "customerId": "947778"
        },
        {
            "type": "accountStatementDTO",
            "id": "15823028",
            "period": "2023-05",
            "accountId": "1334081",
            "customerId": "947778"
        },
        {
            "type": "accountStatementDTO",
            "id": "14872343",
            "period": "2023-04",
            "accountId": "1334081",
            "customerId": "947778"
        }

    ]
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/statements#list-statements">Unit API docs</a>

