;;;;;;;;;; Global Variables ;;;;;;;;;;
; *Table*: A 2d array holding the full table

;;;;;;;;;; Major Variables ;;;;;;;;;;
; *Attributes*: A list of all attributes
; *Attribute-Values*: A list of all of the possible values of the attribute
	; Possibly make this replace Attributes
; *DA*: A list holding the chosen decision attributes
; *DA-Partition*: The partition of the Decision Attributes
; *NDA*: All non decision attributes
; *Valid-Partitions*: A list of all valid partition sorted by size

;;;;;;;;;; Functions ;;;;;;;;;;

; Look up value in *Attribute-Values*
	; Takes in attribute value and attribute number
	; Uses *Attribute-Values*
	; Returns an offset number
(defun lookup
		(val attr-num) ; actual value of attribute and attribute number
		(return (position val (nth attr-num *attribute-values*))) ; Skip the function call and just use what is in the return statement
	)
	
; Find Subset
(defun find-subset
		(#| parameters |#)
	#| Code shit here |#
	)	; 

; Partitioning Algorithms
	; Takes a list of attribute numbers
	; Returns a list of partitions
	; Uses *Table* and *Attribute-Values*

; Partition of size one
(defun partition-1-attribute ; Partitioning algorithm for 1 attribute
		(attributes) ; List containing attribute
	(let parts () ; 'Table of attribute value combinations
		(dotimes (i (length (nth (car attributes) *attriutes-values*)))
			(append parts '()) ; Add an empty list onto the end of 
			) ; Possibly replace this with a function that returns an empty array list
		(dotimes (i length(*table*))
			(append (nth (lookup (nth (car attributes ) i)) i ) (i)) ; Add item to correct spot in parts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Do shit here when you get a white board
			)
		(setf *partisions* (nil) ; Make the final list to be returned
			(dolist (i parts) ; For each element of parts
				(append *partitions* (if i) ; If non empty the partition will be returned and appended to *partitions*
					)
				)
			)
			(return *partitions*)
		)
	)

; Repeat for size 1 thru x

; Is a partition-a a proper subset of partition-b
	; Takes two partitions
	; Calls included
	; Returns true if the first partition fits in the second
(defun proper-subset
		(part part-da) ; 2 partitions that will be compared
	(dolist (sub-partition part)
		(if (not (included sub-partition part-da)); Included is true if the ith partition of part is contained in an element of part-da
			(return nil) ; Exit if not included
			)
		)
	(return t) ; True if the loop completed
	)

; Partition included?
	; Called from subset
	; Takes an element of a partition and a full partition
	; Returns true if the element is found in partition
(defun included
		(item partition)
	(if parition ; Check that the partition is not empty
		(if () ; Check if item is contained in (car partition)
			(true)
			(included (item (cdr (partition)))) ; Recursively check the next item in the list
			)
		(nil) ; This is the terminating statement for the recursion
		)
	)

	
;;;;;;;;;; Main Function ;;;;;;;;;;
; Get filename
; Load table into *table*
; 	Create *attribute-values*
; num-attr = (length car(*table*))
; Get list of decision attributes
; 	Add these attributes to *decision-attributes*
;	Sort values in *decision-attributes*
; 	for i = 0 -> num-attr
;		add i to *other-attributes*
; Ask for max subset size. Let this be m
; Create *coverings* to be empty ; Or do this at the beginning of the file
; Set main-part to be the partition(*decision-attributes*)
; For list *other-attiributes*
;	Check if the (proper-subset (partition #|attr|#) main-part)
;		If yes add attr to *coverings* and remove it from *other-attributes*
; For i = 2 -> m
; Generate subset of size i
;	check if a portion of the subset is included in *coverings*
;		then check (proper-subset (partition #|subset|#) main-part)
;			if yes add subset to *coverings*
; Print coverings when done



;;;;;;;;;; Notes ;;;;;;;;;;


;;;;;;;;;; Questions for Leopold ;;;;;;;;;;














