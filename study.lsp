(defun c:foo () 
  (setq slist (list 319.65 221.46 218.96 83.96 81.46 0))
  (foreach kim slist 
    (setq KKD1 (+ 100 kim))
    (setq KKD2 (- 100 501.68))
    (setq p1 (list 501.68 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)

;   (setq pt1 (getpoint "\nSelect first point: "))
;   (setq pt2 (getpoint pt1 "\nSelect second point: "))
;   (command "line" pt1 pt2 "")