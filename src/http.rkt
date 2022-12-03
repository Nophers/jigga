#lang racket 
(require racket/class)

; http requests 
(define-class http-request (object)
  ((url string? "https://some-api.lol")
   (method string? "GET")
   (headers (listof string?) '())
   (body string? "")))

; http responses
(define-class http-response (object)
  ((status integer? 200)
   (headers (listof string?) '())
   (body string? "")))

; http clients
(define-class http-client (object)
  ((request http-request)
   (response http-response)))

; http servers
(define-class http-server (object)
  ((port integer? 80)
   (clients (listof http-client) '())))

; http sessions
(define-class http-session (object)
  ((server http-server)
   (client http-client)))
