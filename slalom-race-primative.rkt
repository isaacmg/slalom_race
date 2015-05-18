;;Annoying required functions 
(#%require (only racket/base random))
(define (write-line x) (begin (write x) (newline)))
(define (pick-random lst)
  (nth (+ 1 (random (length lst))) lst))
 
 (define (nth n lst) 
  (if (= n 1) 
      (car lst)
      (nth (- n 1) (cdr lst))))
 ;;Slalom specific 
(define (slalom-race-init) 
  (let ((boat (read)) (name (read)))
    (slalom-race-loop 25 boat name)))
                   
(define (slalom-race-loop gates class name)
  (if (= gates 0) 
      gates
      (slalom-race-loop (-  gates 1) class name)))

;;Boats 
(define (make-boat some-boat) 
  some-boat
 ) 
;;List of gates
(define (gate-list n d ) 
  (if (= n 0)
      '()
      (cons  (pick-random (list (normal d) (upstream d) (reverse d))) (gate-list (- n 1) d)
      )))
;; Set distance 
(define (distance x y z) 
  (list x y z))
(define current-distance (distance 0 0 0))
(define course-length (distance 300 0 -5.25)) 

;A gate
 (define (normal d)
  (list '(normal) (distance (0 0 0)) 223) 
  )
(define (upstream d)
  (list '(upstream gate) (distance 0 0 0))
  )
(define (reverse d)
  '(reverse gate)
  )

(define (drop x y z) 
  z) 
;;Moves 

 


