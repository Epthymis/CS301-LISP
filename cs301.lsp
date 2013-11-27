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

; Partitioning algorithm
	; Takes in list of attributes to base partition on
	; Uses global variable *table*
	; Returns a list of lists, outer lists are partitions, inner lists are entries that fall into that partition
(defun partition-1-attribute ; Partitioning algorithm for 1 attribute
		(attributes) ; List containing attribute
	(let parts (make-array ((length(#|attributes-value-a|#)))
					(((#|attirbute value 1|#)(#|attribute value 2|#)...)))
		(dotimes (i (length(*table*)))
			; append i to parts[(lookup(*table*[i][attr]))]
				; Basically insert i into parts[attr-a][attr-b]...
			)
		(setf final-part (nil))
		(dotimes (j (length(#|attributes-values-a|#))) ; Nest as many as needed
			(if (parts[j]) ; If empty the val is nil and it will skip this part
				(#|make a list of these values and append to final_part|#)
				)
			)
		; return final-part
		)
	)

; Compares partitions
(defun less_than
		(part-1 part-2) ; 2 partitions that will be compared
	(dotimes (i (size(part-1))
		(i <= (size (part-1))) ; true if all elements 1 of partition are contained by a element in partition 2
			(if(not(included (first(part-1) part-2)))
				(= i (+ size(part-1) 2))
				)
			)			
		)
	)

(defun included
		(item remaining-subsets) ; Check current item and what is next
	(if() ; Condition | Check if item is contained by the first element of remaining-subset. *Possibly check if it is half included and exit early
		(true) ; If found return true
		(included(item (rest (remaining-subsets) ; Check the rest
		)		
	
	))))
	
; Creates the partition of an attribute
(defun find_subset
		(nda vp size) ; List of non-decision attributes, list of minimal subsets, and the size of the subset
		
		)

; Main ;
; Load data to *table*
; Extract all attributes to list att
; Make a list for each attribute that contains all nominal values
; Ask for Decision Attributes
; Make list *da* // Decision Attributes
; From that make list *nda* // Non Decision Attributes
; Ask for max subset size
; Make empty list vp // Valid Partitions
; For i = 1 to max subset size
	; Find all subsets of size i that are less than the partition of *da* and minimal
; Print all subsets that are valid

;;;;;;;;;; Notes ;;;;;;;;;;
; Make look up table for attribute nominal to numeric values

;;;;;;;;;; Questions for Leopold ;;;;;;;;;;
; Will we need to use floats or a range of numbers
; Max partition size?