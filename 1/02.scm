; SICP exercise 1.2
;
; Translate the following expression into prefix form:
; https://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.2

(/ (+ 5
      4
      (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))
