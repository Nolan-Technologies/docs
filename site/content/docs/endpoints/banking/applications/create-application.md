---
icon: 'http/badge-post'
---

<h1 class=article-title>Create Application<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1> 

---

!!! info
    This endpoint supports idempotency.

## Overview
Creates an application for an individual end-customer. [^ 1]. 

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/applications`

## Endpoint Data
=== "Body"    
    | Property Name       | Description                      | Type   | Required | Allowed Values                |
    | ------------------- | -------------------------------- | ------ | -------- | ----------------------------- |
    | `ssn`               | SSN of the customer              | String | Yes      | Numbers only                  |
    | `firstName`         | First name of the customer       | String | Yes      | Any                           |
    | `lastName`          | Last name of the customer        | String | Yes      | Any                           |
    | `dateOfBirth`       | Date of birth of the customer    | String | Yes      | Date only (e.g. "2001-08-15") |
    | `address`           | Address of the customer          | String | Yes      | Any                           |
    | `email`             | Email address of the customer    | String | Yes      | Any                           |
    | `ip`                | IP address of the customer       | String | No       | Any                           |
    | `phoneNumber`       | Phone number of the customer     | String | Yes      | Any                           |
    | `userId`            | ????                             | Number | Yes      | Any                           |
    | `annualRevenue`     | Annual revenue of the customer   | String | Yes      | `UpTo250k`, `Between250kAnd500k`, `Between500kAnd1m`, `Between1mAnd5m`, `Over5m` |
    | `numberOfEmployees` | Number of employees employed     | String | Yes      | `UpTo10`, `Between10And50`, `Between50And100`, `Between100And500`, `Over500` |
    | `businessVertical`  | Type of business of the customer | String | Yes      | <a href="https://docs.unit.co/types#business-vertical" target="_blank" rel="noopener noreferrer">Full list of allowed values</a> |
    | `website`           | Website of the customer          | String | No       | Any                           |

    ##### Example Body

    ```js
    {
        "ssn": "848324250"
        , "firstName": "John"
        , "lastName": "Smith"
        , "dateOfBirth": "1992-01-01"
        , "address": {
            "street": "123 Main St."
            , "city": "Dallas"
            , "state": "TX"
            , "postalCode": "75201"
            , "street2": "Apt. 1"
        }
        , "email": "jsmith@mail.com"
        , "ip": "127.0.0.1"
        , "phoneNumber": "5555555555"
        , "userId": 1234
        , "annualRevenue": "Between100kAnd200k"
        , "numberOfEmployees": "Between5And10"
        , "businessVertical": "TechnologyMediaOrTelecom"
        , "website": "https://www.piedpiper.com"
    } 
    ```

<!-- === "URL Parameters"
    ```text
    This endpoint has no URL parameters.
    ```

=== "Query Parameters"
    ```text
    This endpoint has no query parameters.
    ``` -->

## Example Request
```text
curl -i -X POST "https://api-s.nolantechnologies.com/v0/banking/applications" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey" \
  --data-raw '{
    "ssn": "848324250"
    , "firstName": "John"
    , "lastName": "Smith"
    , "dateOfBirth": "1990-01-01"
    , "address": {
        "street": "123 Main St."
        , "city": "Dallas"
        , "state": "TX"
        , "postalCode": "75201"
        , "street2": "Apt. 6"
    }
    , "email": "jsmith@mail.com"
    , "ip": "127.0.0.1"
    , "phoneNumber": "8178675309"
    , "userId": 1234
    , "annualRevenue": "Between100kAnd200k"
    , "numberOfEmployees": "Between5And10"
    , "businessVertical": "TechnologyMediaOrTelecom"
    , "website": "https://www.piedpiper.com"
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
    "data": {
        "id": "1516441",
        "status": "Approved",
        "firstName": "John",
        "lastName": "Smith",
        "email": "jsmith@mail.com",
        "createdAt": "2023-09-23T22:20:34.394Z",
        "documents": [],
        "annualRevenue": "Between100kAnd200k",
        "numberOfEmployees": "Between5And10",
        "businessVertical": "TechnologyMediaOrTelecom",
        "website": "https://www.piedpiper.com"
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/applications#create-individual-application">Unit API docs</a>