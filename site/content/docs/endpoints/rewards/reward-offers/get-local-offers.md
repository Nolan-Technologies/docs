---
icon: 'http/badge-get'
---

<h1 class=article-title>Get Local Offers<img class="article-title-image" src="/assets/images/badge-get.svg" alt="GET"/></h1>

---

!!! warning
    The query parameter `userId` is currently required but unused.

## Overview
List local reward offers. Filtering and sorting can be applied.

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/rewards/reward-offers/local-reward-offers`

## Endpoint Data
=== "Query Parameters"
    | Parameter Name | Description                            | Required |
    | -------------- | -------------------------------------- | -------- |
    | `zipCode`      | Zip code for the offers search         | Yes      |
    | `userId`       | ID of the user                         | Yes      |
    | `page`         | The specific page of results to return | Yes      |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/rewards/reward-offers/local-reward-offers?zipCode=75201&userId=1111&page=0" \
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
        "localRewardOffers": [
            {
                "id": "615cc7ef498bed0009bbfb85",
                "title": "2% Cashback",
                "terms": "",
                "redeemableOnce": false,
                "offerType": "INSTORE",
                "commission": 2,
                "expirationDate": "2023-12-31T23:59:59.999Z",
                "merchant": {
                    "id": "615cc7ef498bed0009bbfb82",
                    "name": "The Old Warsaw",
                    "description": "The Old Warsaw has been the Dallas area's ultimate dining experience since 1948.  Famous for the spectacular prime rib and savory rack of lamb as well as other exquisitely prepared dishes, The Old Warsaw has been a favorite of locals and out-of-town patrons for quite some time.  The elegant dining room beckons to those seeking a true premier dining experience to remember.  The long-established candlelit restaurant is known as one of the most romantic in Dallas and is widely recognized for its superior Continental preparations of meat, fish and seafood, as well as its extensive wine list, offering the finest of French and Californian wines.  The rich, Old World atmosphere has made it a favorite for holiday, anniversary or birthday celebrations as well as for business entertainment.  Nightly, musicians enhance the mood with a variety of musical selections and offer special musical celebrations for birthdays and anniversaries.  They have been rated in the first percentile in the country in exceptional cuisine, excellent service and in elegant dining atmosphere for 2007 while receiving the Four Diamond Award from AAA.  The Old Warsaw was also been named \"One of America's Top Restaurants\" by Zagat in 2006. ",
                    "websiteURL": "http://oldwarsaw.com",
                    "imgUrl": "https://content.idine.com/images/merchant/restaurant_images/894654P0.jpg"
                },
                "operationHours": {
                    "monday": "5:00PM - 10:00PM",
                    "tuesday": "5:00PM - 10:00PM",
                    "wednesday": "5:00PM - 10:00PM",
                    "thursday": "5:00PM - 10:00PM",
                    "friday": "5:00PM - 10:00PM",
                    "saturday": "5:00PM - 10:00PM",
                    "sunday": "5:00PM - 10:00PM"
                },
                "address": {
                    "street": "123 Main St",
                    "city": "Dallas",
                    "state": "TX",
                    "zip": "75201"
                },
                "geoLocation": {
                    "lat": 32.7952784,
                    "long": -96.8035767
                },
                "phone": "(214) 555-5555"
            }
        ],
        "nextPage": null
    }
}
```