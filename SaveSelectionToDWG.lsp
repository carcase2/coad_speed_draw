(defun c:ss (/ ss output-dwg)
  (setq ss (ssget '((0 . "*"))))
  (if (and ss (> (sslength ss) 0))
    (progn
      (setq output-dwg (getfiled "Save As" "" "dwg" 1))
      (if output-dwg
        (progn
          (command "_copybase" ss "")
          (command "_pasteclip" "")
          (command "_zoom" "_extents")
          (command "_saveas" output-dwg "")
          (command "_close" "")
          (princ "Selection saved to DWG.")
        )
        (princ "Invalid file name.")
      )
    )
    (princ "No objects selected.")
  )
  (princ)
)

(princ)
