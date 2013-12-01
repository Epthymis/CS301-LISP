; Create global variable holding the full table in an array
(defvar *table* nil
	(make-array '(# #)
		:adjustable ; To make it adjustable
		:initial-contents
		'((() ())
		  (() ())
		  (() ())
		  (() ())))
    "A Table holding the attributes and all entries")


;;;;;;;;;; Notes ;;;;;;;;;;

;;;;;;;;;; Questions for Leopold ;;;;;;;;;;
; Will we need to use floats or a range of numbers
; Max partition size?