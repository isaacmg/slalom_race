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
(
;;List of gates
(define (gate-list list2) 
  list2)
(define (distance x y z) 
  (list x y z))
 
(define (upstream gate boat)
  (list gate distance eddy-length) 
  )
(define (reverse gate)
  (list gate 
  ))
(define (drop x y z) 
  z) 
;;Moves 

 


