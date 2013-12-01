;;//Print Function
(print print-expr)

;;//If Statement
(if test-expr
    then-expr
    optional-else-expr)

;;// Block of code
(progn expr1 expr2 expr3 ...)

;; Set global variable
(setf var expression)

;; Local variable
(let ( declaration1 declaration2 ... ) ;;(let ((var expression) (next_var expression )
     expr1                             ;;     (expr code block)
     expr2
     ... )                             ;;;;   

;; Itterations
(dotimes (var high-val                    ;; var set to 0, high-val is number of itterations
                optional-return-val)      ;; can return a value, else NIL
         expr1                            ;; expr in block
         expr2
         ...)

;; Do list
(dolist (var list-to-iterate-over
                optional-return-val)
         expr1
         expr2
         ...)

;; Functions
(defun function-name-symbol 
            (param1 param2 param3 ...)
    expr1
    expr2
    expr3
    ... )

;; Calling functions
(function-name-symbol)

;; Recursion example
(defun factorial (n)
          (if (<= n 0)
            1
            (* n (factorial (- n 1)))))

;; keyword parameters
(defun first-n-chars (string n 
                  &key reverse-first  nil by default
                       (capitalize-first t) )   t by default
          (let ((val (if capitalize-first 
                              (string-upcase string)
                              string)))
            (if reverse-first
              (subseq (reverse val) 0 n)
              (subseq val 0 n))))

;; List commands
first returns the first item in a list. The old name of first is car.

rest returns a list consisting of everything but the first item. The old name of rest is cdr.

append hooks multiple lists together.

cons takes an item and a list, and returns a new list consisting of the old list with the item tacked on the front.

'( list ) returns the list as text, does not evaluate


http://www.cs.umd.edu/~nau/cmsc421/lisp-intro.pdf
https://www.cs.drexel.edu/~jpopyack/Courses/AI/Wi13/extras/LISP/LISP_commands.html
http://www.cs.cmu.edu/~ggordon/lisp-hints.txt
http://en.wikipedia.org/wiki/Common_Lisp
http://common-lisp.net/language.html
http://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node158.html#SECTION002110000000000000000

