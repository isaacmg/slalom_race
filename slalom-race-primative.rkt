(define (slalom-race-init) 
  (let ((boat (read)) (name (read)))
    (slalom-race-loop 25 boat name)))
                   
(define (slalom-race-loop gates class name)
  (if (= gates 0) 
      gates
      (slalom-race-loop (-  gates 1) class name)))

(define (make-boat some-boat) 
  some-boat
 ) 
(define (r list2) 
  list2)


