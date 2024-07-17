
;; title: counter
;; version:
;; summary:
;; description:
;; get-count - anyone ca read the counter value
;; count-up - only contract owner (deployer) can call this function

;; traits
;;

;; token definitions
;;

;; constants
;;

(define-constant contract-owner tx-sender)

;; data vars
;;
(define-data-var count uint u0)

(define-read-only (get-count)
    (var-get count)
)

(define-public (count-up)
    (begin
        (asserts! (is-eq contract-owner tx-sender) (err "Not owner"))
        (ok (var-set count (+ (var-get count) u5))) 
    )  
)