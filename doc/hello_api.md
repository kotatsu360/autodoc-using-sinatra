## GET 
Hello :).

### Example

#### Request
```
GET / HTTP/1.1
Content-Length: 0
Host: example.org
```

#### Response
```
HTTP/1.1 200
Content-Length: 22
Content-Type: application/json
X-Content-Type-Options: nosniff

{
  "message": "hello :)"
}
```
