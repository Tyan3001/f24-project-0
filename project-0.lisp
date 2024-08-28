(defun TODO (thing)
  (error "Unimplemented: ~A" thing))

;; Return T if item is a member of set.
;; Return NIL if item is not a member of set.
;; The type of set is list.
;;
;; Examples:
;;  (set-member '(1 2) 1) => T
;;  (set-member '(1 2) 3) =>  NIL
(defun set-member (set item)
  (TODO 'set-member))

;; Return the union of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-union '(1 2) '(2 4)) => '(1 2 4)
(defun set-union (set-1 set-2)
  (TODO 'set-union))

;; Return the intersection of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-intersection '(1 2) '(2 4)) => '(2)
(defun set-intersection (set-1 set-2)
  (TODO 'set-intersection))

;; Return the difference of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-diff '(1 2) '(2 4)) => '(1)
(defun set-diff (set-1 set-2)
  (TODO 'set-diff))

;; Return the exclusive or of a and b
;;
;; Examples:
;;  (boolean-xor t nil) => t
;;  (boolean-xor nil nil) => nil
(defun boolean-xor (a b)
  (TODO 'boolean-xor))

;; Return the implication of a and b
;;
;; Examples:
;;  (boolean-implies t nil) => nil
;;  (boolean-implies nil nil) => t
(defun boolean-implies (a b)
  (TODO 'boolean-implies))

;; Return the bi-implication (if and only if) of a and b
;;
;; Examples:
;;  (boolean-iff t nil) => nil
;;  (boolean-iff nil nil) => t
(defun boolean-iff (a b)
  (TODO 'boolean-iff))

;; Evaluate a boolean expression.
;; Handle NOT, AND, OR, XOR, IMPLIES, and IFF.
;;
;; Examples:
;;  (boolean-eval '(and t nil)) => nil
;;  (boolean-eval '(and t (or nil t)) => t
(defun boolean-eval (exp)
  (cond
    ((equal t exp) t)
    ((equal 'not (car exp))
     (TODO 'boolean-eval-not))
    ;; TODO: Handle other possible cases
    (t
     (TODO 'boolean-eval))))

;; Perform the left fold on the list
;;
;; Examples:
;;   (fold-left #'- 1 '(2 3)) => -4
(defun fold-left (function initial-value list)
  (TODO 'fold-left))


;; Perform the right fold on the list
;;
;; Examples:
;;   (fold-right #'- 1 '(2 3)) => 0
(defun fold-right (function initial-value list)
  (TODO 'fold-right))

;; Perform merge sort on the lists.
;;
;; Parameters:
;;   list: The list to sort
;;   predicate: A function to compare elements of the list
;;
;; Examples:
;;     (merge-sort '(2 1 5 0) #'<) => '(0 1 2 5)
(defun merge-sort (list predicate)
  (TODO 'merge-sort))

;; In mathematics, the fixpoint of a function f is where:
;;    f(y) = y
;; That is, where the output equals the input
;;
;; A function may have zero or more fixpoints. For example,
;;    f(x) = x^2
;; has fixpoints:
;;    f(0) = 0
;;    f(1) = 1
;;
;; Parameters:
;;    f: the function to find the fixpoint of
;;    initial-guess: a floating point number to start at
;;    close-enough?: a predicate function
;;    precision: a floating point number to round to
;;
;; Your solution should repeatedly apply f until:
;;    (close-enough? (f next-guess) previous-guess)
;;      returns true 
;;
;; And then round the answer to the specified precision
;;
;; In pseudocode, this looks like this:
;; procedure find-fixpoint(f, initial-guess, close-enough?, precision) (
;;     previous-guess = initial-guess
;;     repeat (
;;         next-guess <- f(previous-guess)
;;         if close-enough?(next-guess, previous-guess) (
;;             return round-to-precision(next-guess, precision)
;;         )
;;         previous-guess <- next-value
;;     )
;; )
;;
;; Note that there are inputs which may make this function diverge.
;;
;; Examples:
;;    (find-fixpoint (lambda (x) (* x x)) 0.9 (lambda (a b) (< (abs (- a b)) 0.0001)) 0.01)
;;      => 0.0
;;    (find-fixpoint (lambda (x) x) 10.0 (lambda (a b) (= a b)) 0.1)
;;      => 10.0
;;    (find-fixpoint #'cos 1.0 (lambda (a b) (< (abs (- a b)) 0.001)) 0.001)
;;      => 0.739 
(defun find-fixpoint (f initial-guess close-enough? precision)
  (TODO 'find-fixpoint))
