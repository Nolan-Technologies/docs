---
icon: 'http/badge-get'
---

<h1 class=article-title>Get by Date<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get reconciliations by date.

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description                               | Required |
    | -------------- | ----------------------------------------- | -------- |
    | `date`         | Day for which to retrieve reconciliations | Yes      |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/reconciliations/daily?date=2022-12-28T08:00:00.000Z" \
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
                user: { referringPartnerUserId: '1' }
                , card: {
                    bin: '123456'
                    , last4: '1234'
                    , network: 'VISA'
                }
                , reward: {
                    merchantId: '12345'
                    , name: 'kodas shop'
                    , commissionToIssuer: 1000
                    , status: 'SETTLED'
                    , type: 'CARDLINKED'
                }
                , transaction: {
                    issuerTransactionId: '6789506067945'
                    , status: 'APPROVED'
                    , transactionAmountInCents: 100000
                    , transactionTimeStamp: '2021-09-05T23:45:57.000Z'
                }
            }
        ]
    }
}
```