---
icon: 'http/badge-get'
---

<h1 class=article-title>Get National Offers<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

!!! warning
    The query parameter `userId` is currently required but unused.

## Overview
List national reward offers. Filtering and sorting can be applied.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/reward-offers/national-reward-offers`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description                            | Required |
    | -------------- | -------------------------------------- | -------- |
    | `userId`       | Referring partner ID                   | Yes      |
    | `page`         | The specific page of results to return | Yes      |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/reward-offers/national-reward-offers?userId=1111&page=0" \
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
        "nationalRewardOffers": [
            {
                "id": "629fbbef13152c000977b8c0",
                "title": "Spend $25 or more, get 2% Cashback",
                "terms": "Offer valid on purchases of $25.00 or more. ",
                "redeemableOnce": false,
                "offerType": "ONLINE",
                "commission": 2,
                "expirationDate": "2024-06-01T06:00:00.000Z",
                "merchant": {
                    "id": "629a762cef3e5c00095df465",
                    "name": "Spunky Frames",
                    "description": "High-Quality and unique glasses at affordable prices. Want to make a statement? Look no further than Spunky Frames.",
                    "websiteURL": "https://www.kardspunkyframes.com/",
                    "imgUrl": "https://assets.getkard.com/public/logos/kard.jpg"
                }
            },
            {
                "id": "629fbf2727addc0009de8492",
                "title": "4% Cashback (up to $166)",
                "terms": "Offer valid on purchases up to $1,000.00.",
                "redeemableOnce": false,
                "offerType": "ONLINE",
                "commission": 4,
                "expirationDate": "2024-06-01T06:00:00.000Z",
                "merchant": {
                    "id": "629e456656c4b10009e0c7e7",
                    "name": "Chalk Cybersecurity",
                    "description": "Chalk Cybersecurity is your first and best line of defense to keep your data safe. ",
                    "websiteURL": "https://www.kardchalkcyber.com",
                    "imgUrl": "https://assets.getkard.com/public/logos/kard.jpg"
                }
            }
        ],
        "nextPage": null
    }
}
```