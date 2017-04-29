(display "Continue entering vals, 0 to calculate total\n")

(define (nextVal)
  (display "Enter value: ")
  (string->number (read-line)))

(define (nextOperation)
  (display "Enter operation: ")
  (read-line))

(define (dividedByZero tot)
  (display "Error: Cant divide by 0\n")
  (sequence tot)
)


(define (sequence tot)
  (display "Current total: ")
  (display tot)
  (display "\n")
  (let ((op (nextOperation)))
    (cond
      ((equal? op "-") (sequence (- tot (nextVal))))
      ((equal? op "+") (sequence (+ tot (nextVal))))
      ((equal? op "*") (sequence (* tot (nextVal))))
      ((equal? op "/") (let ((x (nextVal)))
                         (cond
                           ((equal? x 0) (dividedByZero tot))
                           (not(equal? x 0) (sequence (/ tot x)))
                         )
                       ))
    )
  )
)
                           
(define calculator
  (sequence 0))
