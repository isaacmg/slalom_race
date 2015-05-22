;;Annoying required functions 
(#%require (only racket/base random))
(define (write-line x) (begin (write x) (newline)))
(define (pick-random lst)
  (nth (+ 1 (random (length lst))) lst))
 
 (define (nth n lst) 
  (if (= n 1) 
      (car lst)
      (nth (- n 1) (cdr lst))))
(define call/cc call-with-current-continuation)
(define (random-func p1 p2)
  (+ p1 (random p2)))
 ;;Slalom specific 
(define (slalom-race-init) 
  (let ((boat (read)) (name (read)))
    (slalom-race-loop (gate-list 25 300) boat name))) 
                   
(define (slalom-race-loop gates class name)
  (if (= gates '()) 
      gates
      (slalom-race-loop (-  gates 1) class name)))
   
;;Boats and stuff
(define (make-boat some-boat) 
  some-boat
 ) 
;Define boats using lambda expressions 
(define (new-boat name length type)
  (lambda (x) ( x type length name) )) 

(define galasport-c1 (new-boat 'C1  351 'galasport))
(define galasport-k1 (new-boat 'K1  351 'galasport))


(define (length nb)
  (nb (lambda (x y z) y)))
(define (name nb) 
  (nb (lambda (x y z) x)))


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
  (list '(normal) (distance (random-func (car d) 50) (random-func  0 20) 0 ) 223) 
  )
(define (upstream d)
  (list '(upstream gate)(distance (random-func (car d) 50) (pick-random  ( list 0 20)) 0)))
(define (reverse d)
  (list '(reverse gate) (distance (random-func (car d) 50) (random-func  0 20) 0 ) 223)
 )

(define (drop x y z) z) 
;;Moves 


 


