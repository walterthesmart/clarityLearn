;; add up
(+ 5 (* 3 2))

"String"

(list 1 2 3 4)

{
    id: u5,

    name: u"Walter",

    age: u34
}

;; clafity has types and everything returns something
(some u5)
;; unwrap is used to unpack the some and optional functions
(unwrap! (some u5) (err "Unwrap failed"))

;; optional is used to return a value or nothing

(define-constant contract-owner tx-sender)

(define-constant price u5000000)

(define-map messages {sender: principal} { message: string-utf8 })

(define-public (write-message (message string-utf8))
    (begin 
        (try! (stx-transfer? price tx-sender contract-owner))
        
        (map-set messages { sender: tx-sender } { message: message })

        (ok "Message written successfully")
        
    )   
)

(define-non-fungible-token walterNft uint)



