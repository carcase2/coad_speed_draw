(defun C:HELLO ( / dcl_id )
  (setq dcl_id (load_dialog "test.dcl")) ; Load the DCL file.
  (if (not (new_dialog "hello" dcl_id))   ; Initialize the dialog.
    (exit)                                ; Exit if this does not work.
  )
  (start_dialog)                          ; Display the dialog box.
  (unload_dialog dcl_id)                  ; Unload the DCL file.
 (princ)
)

; (defun GETPASS ( / dcl_id pass )
;   (setq dcl_id (load_dialog "test.dcl"))
;   (if (new_dialog "passdlg" dcl_id)
;     (progn
;       (action_tile "password" "(setq pass $value)")
;       (start_dialog)
;       (unload_dialog dcl_id)
;     )
;     (princ "Error: Unable to load GETPASS.DCL. ")
;   )
;   pass
; )