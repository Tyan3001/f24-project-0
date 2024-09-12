;; Test cases for set-member

(format t "Test 1 (set-member '(1 2 3) 3): ~a~%" (set-member '(1 2 3) 3)) ;; Expected: T
(format t "Test 2 (set-member '(1 2 3) 5): ~a~%" (set-member '(1 2 3) 5)) ;; Expected: NIL
(format t "Test 3 (set-member '() 1): ~a~%" (set-member '() 1)) ;; Expected: NIL
(format t "Test 4 (set-member '(1) 1): ~a~%" (set-member '(1) 1)) ;; Expected: T
(format t "Test 5 (set-member '(1) 2): ~a~%" (set-member '(1) 2)) ;; Expected: NIL
(format t "Test 6 (set-member '(1 2 2 3) 2): ~a~%" (set-member '(1 2 2 3) 2)) ;; Expected: T
(format t "Test 7 (set-member '(\"a\" \"b\" \"c\") \"b\"): ~a~%" (set-member '("a" "b" "c") "b")) ;; Expected: T
(format t "Test 8 (set-member '(1 \"a\" 2.5) \"a\"): ~a~%" (set-member '(1 "a" 2.5) "a")) ;; Expected: T
(format t "Test 9 (set-member '(1 nil 2) nil): ~a~%" (set-member '(1 nil 2) nil)) ;; Expected: T
(format t "Test 10 (set-member '((1 2) (3 4) (5 6)) '(3 4)): ~a~%" (set-member '((1 2) (3 4) (5 6)) '(3 4))) ;; Expected: T

;; Test cases for set-union

(format t "Test 1 (set-union '(1 2 3) '(4 5 6)): ~a~%" (set-union '(1 2 3) '(4 5 6))) ;; Expected: (1 2 3 4 5 6)
(format t "Test 2 (set-union '(1 2) '(2 4)): ~a~%" (set-union '(1 2) '(2 4))) ;; Expected: (1 2 4)
(format t "Test 3 (set-union '(1 2 3) '()): ~a~%" (set-union '(1 2 3) '())) ;; Expected: (1 2 3)
(format t "Test 4 (set-union '() '()): ~a~%" (set-union '() '())) ;; Expected: NIL
(format t "Test 5 (set-union '(1) '(2 3)): ~a~%" (set-union '(1) '(2 3))) ;; Expected: (1 2 3)
(format t "Test 6 (set-union '(\"a\" \"b\") '(\"b\" \"c\" \"d\")): ~a~%" (set-union '("a" "b") '("b" "c" "d"))) ;; Expected: ("a" "b" "c" "d")
(format t "Test 7 (set-union '(1 \"a\" 2.5) '(\"b\" 2.5 3)): ~a~%" (set-union '(1 "a" 2.5) '("b" 2.5 3))) ;; Expected: (1 "a" 2.5 "b" 3)
(format t "Test 8 (set-union '(1 2 3 4 5 6) '(7 8 9 10 11 12)): ~a~%" (set-union '(1 2 3 4 5 6) '(7 8 9 10 11 12))) ;; Expected: (1 2 3 4 5 6 7 8 9 10 11 12)
(format t "Test 9 (set-union '(1 2 3) '(1 2 3 4)): ~a~%" (set-union '(1 2 3) '(1 2 3 4))) ;; Expected: (1 2 3 4)
(format t "Test 10 (set-union '((1 2) (3 4)) '((3 4) (5 6))): ~a~%" (set-union '((1 2) (3 4)) '((3 4) (5 6)))) ;; Expected: ((1 2) (3 4) (5 6))

;; Test cases for set-intersection

(format t "Test 1 (set-intersection '(1 2) '(2 4)): ~a~%" (set-intersection '(1 2) '(2 4))) ;; Expected: (2)
(format t "Test 2 (set-intersection '(1 2 3 4) '(3 4 5 6)): ~a~%" (set-intersection '(1 2 3 4) '(3 4 5 6))) ;; Expected: (3 4)
(format t "Test 3 (set-intersection '(1 2 3) '()): ~a~%" (set-intersection '(1 2 3) '())) ;; Expected: NIL
(format t "Test 4 (set-intersection '() '()): ~a~%" (set-intersection '() '())) ;; Expected: NIL
(format t "Test 5 (set-intersection '(1 2 3) '(4 5 6)): ~a~%" (set-intersection '(1 2 3) '(4 5 6))) ;; Expected: NIL
(format t "Test 6 (set-intersection '(\"a\" \"b\" \"c\") '(\"b\" \"c\" \"d\")): ~a~%" (set-intersection '("a" "b" "c") '("b" "c" "d"))) ;; Expected: ("b" "c")
(format t "Test 7 (set-intersection '(1 \"a\" 2.5) '(2.5 \"a\" \"b\")): ~a~%" (set-intersection '(1 "a" 2.5) '(2.5 "a" "b"))) ;; Expected: (2.5 "a")
(format t "Test 8 (set-intersection '((1 2) (3 4)) '((3 4) (5 6))): ~a~%" (set-intersection '((1 2) (3 4)) '((3 4) (5 6)))) ;; Expected: ((3 4))
(format t "Test 9 (set-intersection '(1 2 3 4 5) '(1 2)): ~a~%" (set-intersection '(1 2 3 4 5) '(1 2))) ;; Expected: (1 2)
(format t "Test 10 (set-intersection '(\"x\" \"y\" \"z\") '(\"z\")): ~a~%" (set-intersection '("x" "y" "z") '("z"))) ;; Expected: ("z")

;; Test cases for set-diff

(format t "Test 1 (set-diff '(1 2) '(2 4)): ~a~%" (set-diff '(1 2) '(2 4))) ;; Expected: (1)
(format t "Test 2 (set-diff '(1 2 3 4) '(3 4 5 6)): ~a~%" (set-diff '(1 2 3 4) '(3 4 5 6))) ;; Expected: (1 2)
(format t "Test 3 (set-diff '(1 2 3) '()): ~a~%" (set-diff '(1 2 3) '())) ;; Expected: (1 2 3)
(format t "Test 4 (set-diff '() '(1 2 3)): ~a~%" (set-diff '() '(1 2 3))) ;; Expected: NIL
(format t "Test 5 (set-diff '(1 2 3) '(4 5 6)): ~a~%" (set-diff '(1 2 3) '(4 5 6))) ;; Expected: (1 2 3)
(format t "Test 6 (set-diff '(\"a\" \"b\" \"c\") '(\"b\" \"c\" \"d\")): ~a~%" (set-diff '("a" "b" "c") '("b" "c" "d"))) ;; Expected: ("a")
(format t "Test 7 (set-diff '(1 \"a\" 2.5) '(2.5 \"a\" \"b\")): ~a~%" (set-diff '(1 "a" 2.5) '(2.5 "a" "b"))) ;; Expected: (1)
(format t "Test 8 (set-diff '((1 2) (3 4)) '((3 4) (5 6))): ~a~%" (set-diff '((1 2) (3 4)) '((3 4) (5 6)))) ;; Expected: ((1 2))
(format t "Test 9 (set-diff '(1 2 3 4 5) '(1 2)): ~a~%" (set-diff '(1 2 3 4 5) '(1 2))) ;; Expected: (3 4 5)
(format t "Test 10 (set-diff '(\"x\" \"y\" \"z\") '(\"z\")): ~a~%" (set-diff '("x" "y" "z") '("z"))) ;; Expected: ("x" "y")

;; Test cases for boolean-xor

(format t "Test 1 (boolean-xor t nil): ~a~%" (boolean-xor t nil)) ;; Expected: T
(format t "Test 2 (boolean-xor nil nil): ~a~%" (boolean-xor nil nil)) ;; Expected: NIL
(format t "Test 3 (boolean-xor t t): ~a~%" (boolean-xor t t)) ;; Expected: NIL
(format t "Test 4 (boolean-xor nil t): ~a~%" (boolean-xor nil t)) ;; Expected: T
(format t "Test 5 (boolean-xor t t): ~a~%" (boolean-xor t t)) ;; Expected: NIL
(format t "Test 6 (boolean-xor nil nil): ~a~%" (boolean-xor nil nil)) ;; Expected: NIL

;; Test cases for boolean-implies

(format t "Test 1 (boolean-implies t nil): ~a~%" (boolean-implies t nil)) ;; Expected: NIL
(format t "Test 2 (boolean-implies nil nil): ~a~%" (boolean-implies nil nil)) ;; Expected: T
(format t "Test 3 (boolean-implies t t): ~a~%" (boolean-implies t t)) ;; Expected: T
(format t "Test 4 (boolean-implies nil t): ~a~%" (boolean-implies nil t)) ;; Expected: T
(format t "Test 5 (boolean-implies nil nil): ~a~%" (boolean-implies nil nil)) ;; Expected: T
(format t "Test 6 (boolean-implies t t): ~a~%" (boolean-implies t t)) ;; Expected: T

;; Test cases for boolean-iff

(format t "Test 1 (boolean-iff t nil): ~a~%" (boolean-iff t nil)) ;; Expected: NIL
(format t "Test 2 (boolean-iff nil nil): ~a~%" (boolean-iff nil nil)) ;; Expected: T
(format t "Test 3 (boolean-iff t t): ~a~%" (boolean-iff t t)) ;; Expected: T
(format t "Test 4 (boolean-iff nil t): ~a~%" (boolean-iff nil t)) ;; Expected: NIL
(format t "Test 5 (boolean-iff t t): ~a~%" (boolean-iff t t)) ;; Expected: T
(format t "Test 6 (boolean-iff nil nil): ~a~%" (boolean-iff nil nil)) ;; Expected: T

;; Test cases for boolean-eval

(format t "Test 1 (boolean-eval '(and t nil)): ~a~%" (boolean-eval '(and t nil))) ;; Expected: NIL
(format t "Test 2 (boolean-eval '(or t nil)): ~a~%" (boolean-eval '(or t nil))) ;; Expected: T
(format t "Test 3 (boolean-eval '(xor t nil)): ~a~%" (boolean-eval '(xor t nil))) ;; Expected: T
(format t "Test 4 (boolean-eval '(implies t nil)): ~a~%" (boolean-eval '(implies t nil))) ;; Expected: NIL
(format t "Test 5 (boolean-eval '(iff t nil)): ~a~%" (boolean-eval '(iff t nil))) ;; Expected: NIL
(format t "Test 6 (boolean-eval '(and t (or nil t))): ~a~%" (boolean-eval '(and t (or nil t)))) ;; Expected: T
(format t "Test 7 (boolean-eval '(implies nil t)): ~a~%" (boolean-eval '(implies nil t))) ;; Expected: T
(format t "Test 8 (boolean-eval '(iff t t)): ~a~%" (boolean-eval '(iff t t))) ;; Expected: T
(format t "Test 9 (boolean-eval '(not t)): ~a~%" (boolean-eval '(not t))) ;; Expected: NIL
(format t "Test 10 (boolean-eval '(not nil)): ~a~%" (boolean-eval '(not nil))) ;; Expected: T

;; Test cases for merge-sort
(assert (equal (merge-sort '(2 1 5 0) #'<) '(0 1 2 5)))
(assert (equal (merge-sort '(2 1 5 0) #'>) '(5 2 1 0)))
(assert (equal (merge-sort '(2 1 5) #'<) '(1 2 5)))
(assert (equal (merge-sort '(2) #'<) '(2)))
(assert (equal (merge-sort '() #'<) nil))
(assert (equal (merge-sort nil #'<) nil))
