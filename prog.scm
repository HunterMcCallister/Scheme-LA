;; CS354 Language Assignment #1
;; Author: Hunter McCallister
;; Description: uses recursive function super-duper that takes a list and a count adn returns
;; a new list with every element duplicated count times. Uses helper methods to replicate and concatenation.

;; --- Main function ---
(define (super-duper source count)
  (if (not (pair? source)) ;;If source is not a pair
    source ;;returns source as is
    (cat (replicate (super-duper (car source) count) count) ;; left arg for cat
          (super-duper (cdr source) count)))) ;; right arg


;; Helper methods

;;--- replicate ---
;; Returns a list with n copies of x
(define (replicate x n)
  (if (= n 0)
    '() ;;base case
    (cons x (replicate x (- n 1)))) ;;recursion on x
)

;; --- concat ---
;; Concatenate two lists 
(define (cat xs ys)
  (if (null? xs)
    ys
    (cons (car xs) (cat (cdr xs) ys)))) ;; strip one element from xs and build new list


;; --- Testers ---

(display "Running Testers...") (newline)

;; Assignment examples 
(display (super-duper 123 1)) (newline)        ; => 123
(display (super-duper 123 2)) (newline)        ; => 123
(display (super-duper '() 1)) (newline)        ; => ()
(display (super-duper '() 2)) (newline)        ; => ()
(display (super-duper '(x) 1)) (newline)       ; => (x)
(display (super-duper '(x) 2)) (newline)       ; => (x x)
(display (super-duper '(x y) 1)) (newline)     ; => (x y)
(display (super-duper '(x y) 2)) (newline)     ; => (x x y y)
(display (super-duper '((a b) y) 3)) (newline) ; => ((a a a b b b) (a a a b b b) (a a a b b b) y y y)
;; extra 
(display (super-duper '(x y) 0)) (newline)     ; reasonable => ()
(display (super-duper '((a (b)) c) 2)) (newline)
(display (super-duper 'x 0)) (newline)         ; => x