---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Locations<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

## Overview
Get the locations of nearby ATMs. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/atm-locations?:latitude&:longitude`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description                              | Required |
    | -------------- | ---------------------------------------- | -------- |
    | `latitude`     | Latitude coordinates for the ATM search  | Yes      |
    | `longitude`    | Longitude coordinates for the ATM search | Yes      |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/atm-locations?latitude=40.70000&longitude=-75.9000" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
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
                type: 'atmLocation'
                , attributes: {
                    network: 'Allpoint'
                    , locationName: 'PARKERS HOUSE'
                    , coordinates: {
                        longitude: -73.93041
                        , latitude: 42.79894
                    }
                    , address: {
                        street: '123 Main Street'
                        , city: 'Dallas'
                        , state: 'TX'
                        , postalCode: '12345'
                        , country: 'US'
                    }
                    , distance: 0.01
                    , surchargeFree: true
                    , acceptDeposits: true
                }
            }
        ]
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/cards-atm-locations/">Unit API docs</a>