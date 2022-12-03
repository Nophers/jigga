#lang racket
(require racket/gui/base)
(require http/request)

(define frame (new frame% [label "Jigga"]))
(send frame show #t)

(define text-field (new text-field% [parent frame]
                                   [label "APi link:"]))
(send text-field show #t)

(define submit-button (new button% [parent frame]
                                  [label "Submit"]
                                  [callback (lambda (button event)
                                              (message-box (send text-field get-value)))]))
(send submit-button show #t)

; TODO: 
; Add HTTP handler (https://docs.racket-lang.org/http/index.html)