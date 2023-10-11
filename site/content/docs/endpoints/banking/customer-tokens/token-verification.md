---
icon: 'http/badge-post'
---

<h1 class=article-title>Token Verification<img class="article-title-image" src="/assets/images/badge-post.svg" alt="POST"/></h1>

---

Create a customer verification token using customer ID. [^ 1]

## Endpoint URL
`https://api-s.nolantechnologies.com/v0/banking/customers/:customerId/token-verifications`

## Endpoint Data
=== "URL Parameters"
    | Parameter Name | Description           | 
    | -------------- | --------------------- |
    | `customerid`   | The Unit customer ID  |

## Example Request
```text
curl -i -X GET "https://api-s.nolantechnologies.com/v0/banking/customers/12345/token-verification" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Nolan-API-Key: YourNolanApiKey"
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
        "verificationToken": "xIpoLbTf-..."
    }
}
```

[^ 1]: Read more about this endpoint in the <a target="_blank" rel="noopener noreferrer" href="https://docs.unit.co/customer-api-tokens/#customers-customer-token-verification">Unit API docs</a>

