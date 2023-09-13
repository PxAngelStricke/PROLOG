(defun recorre (lista)
    (format t "~A -> " (car lista))
    (if lista 
        (recorre (cdr lista))
    )
)