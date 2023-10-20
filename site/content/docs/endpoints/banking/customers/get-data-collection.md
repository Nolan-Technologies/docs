---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Data Collection<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get a customer data collection using customer ID.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/customers/:customerId/data-collections`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name | Description           | 
    | -------------- | --------------------- |
    | `customerid`   | The Unit customer ID  |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/customers/12345/data-collections" \
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
        "data": {
            "type": "dataCollection",
            "attributes": {
                "isRequired": false
            }
        }
    }
}
```






