; (defun c:test2()
;   (setq KKD1 (+ KKD1 color_tie_height))
;   (setq KKD2 width) 
;   (setq p1 (list 0 KKD1))
; 	(setq p2 (list KKD2 KKD1))
;   (command "line" p1 p2 "") 
   
;     (setq KKD1 (+ KKD1 windbar_height))
;   (setq KKD2 width) 
;   (setq p1 (list 0 KKD1))
; 	(setq p2 (list KKD2 KKD1))
;   (command "line" p1 p2 "") 
 
;    (princ) 
  
; )
; 20220919 처음 commit

(defun c:c-2()
  
    ; (command "snap" "off")

    (setq width(getreal "Enter Door's Width ?  : "))

    (setq height (getreal "Enter Door's Height ?  : "))
	
	;; 네모 그리기
  ; (command "rectang" (list 0 0) (list 3000 3000))
; 변수 지정
  ; (setq height (+ 3000)) 
  ; (setq width (+ 3000)) 
   (setq side_distance (- 2500))
; 드럼 block 삽입
 	(command "insert" "c2drumleft" (list 0 height) "" "" "")
	(command "insert" "c2drumright" (list width height) "" "" "")
	(command "insert" "c2side" (list side_distance height) "" "" "")
  ; (princ)
  ;; 드럼부분
  
  (setq KKD1 (+ height 382.88))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
   (command "line" p1 p2 "") 
   
  (setq KKD1 (+ height 296.98))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
   
  (setq KKD1 (+ height 289.98))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
 
   
   (setq KKD1 (+ height 188.98))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
   
  (setq KKD1 (+ height 87.98))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
   
  (setq KKD1 (+ height 80.98))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
   
  (setq KKD1 (+ height 0))
  (setq KKD2 (- width 500))
  (setq p1 (list 500 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
    
    ;;  왼쪽 프레임
   
  (setq KKD1 (- height 500))
  (setq KKD2 0)
  (setq p1 (list 0 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 -121.8044)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 -121.6844)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "")  
   
   
      (setq KKD1 (- height 500))
  (setq KKD2 -1.6844)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      (setq KKD1 (- height 500))
  (setq KKD2 -5.1544)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 -5.4744)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 -26.644)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 -27.4844)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 

   (setq KKD1 (- height 500))
  (setq KKD2 -28.6644)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  
   (setq KKD1 (- height 500))
  (setq KKD2 -30.0144)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  
   (setq KKD1 (- height 500))
  (setq KKD2 -30.5244)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  
     (setq KKD1 (- height 500))
  (setq KKD2 -59.3444)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
     (setq KKD1 (- height 500))
  (setq KKD2 -60.1544)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
     (setq KKD1 (- height 500))
  (setq KKD2 -60.8644)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
     (setq KKD1 (- height 500))
  (setq KKD2 -62.4644)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
     (setq KKD1 (- height 500))
  (setq KKD2 -63.1744)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  (setq KKD1 (- height 500))
  (setq KKD2 -63.9844)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 -93.1344)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  (setq KKD1 (- height 500))
  (setq KKD2 -93.6244)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  (setq KKD1 (- height 500))
  (setq KKD2 -94.9744)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  (setq KKD1 (- height 500))
  (setq KKD2 -96.1544)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
   
  (setq KKD1 (- height 500))
  (setq KKD2 -97.0344)
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
  (princ)

  ;  오른쪽 프레임
   
  (setq KKD1 (- height 500))
  (setq KKD2 0)
  ; (setq KKD2 (+ KKD2 121.8))
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 

  (setq KKD1 (- height 500))
  (setq KKD2 1.68)
  ; (setq KKD2 (+ KKD2 121.8))
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 

  (setq KKD1 (- height 500))
  (setq KKD2 5.15)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 

   (setq KKD1 (- height 500))
  (setq KKD2 5.47)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
   (setq KKD1 (- height 500))
  (setq KKD2 26.6)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
   
   (setq KKD1 (- height 500))
  (setq KKD2 27.48)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 28.66)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 30.01)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 30.52)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 59.33)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
         
   (setq KKD1 (- height 500))
  (setq KKD2 60.15)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 60.86)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 62.46)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "")       
   
   (setq KKD1 (- height 500))
  (setq KKD2 63.17)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 63.98)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 93.13)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "")       
   
   (setq KKD1 (- height 500))
  (setq KKD2 93.62)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 94.97)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 96.15)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "")       
   
   (setq KKD1 (- height 500))
  (setq KKD2 97.03)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 121.68)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
      
   (setq KKD1 (- height 500))
  (setq KKD2 121.8)
  (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
   
  (setq KKD1 (+ width 121.8))
  (setq KKD2 -121.8)
  ; (setq KKD2 (+ width KKD2))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD1 0))
  (command "line" p2 p1 "") 
   
  ;  측면도 그림
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 0)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 59.2)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
     (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 69.71)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 70.21)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 94.21)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 105.23)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 141.71)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 94.71)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list KKD2 KKD1))
  (command "line" p2 p1 "") 
   
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 141.71)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
	(setq p2 (list side_distance 0))
  (command "line" p2 p1 "") 
  
   
  ;  bottom bar 측면도 넣기
  (command "insert" "bottom c-1 side" (list -2559.2 142) "" "" "")
 	; (command "insert" "c-1 bottom side" (list -1059.2 142) "" "" "")
  (setq KKD1 149.15)
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
   (command "line" p1 p2 "") 

  (setq bottom_sheet_height 701.6) 
  (setq KKD1 (+ KKD1 bottom_sheet_height))
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 

  (setq windbar_height 52.49) 
  (setq KKD1 (+ KKD1 windbar_height))
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 

  (setq color_tie_height 28.44) 
  (setq KKD1 (+ KKD1 color_tie_height))
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 

   (setq 투명창_height 600) 
  (setq KKD1 (+ KKD1 투명창_height))
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 
   
  (setq KKD1 (+ KKD1 color_tie_height))
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "") 

  (setq KKD1 (+ KKD1 6.25)) 	
  (command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
  (setq KKD1 (- KKD1 6.25)) 	
  
  (setq KKD1 (+ KKD1 windbar_height))
  (setq KKD2 width) 
  (setq p1 (list 0 KKD1))
	(setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   
  


  ; (command test2)

   (setq wind_1 -2560.2)
  (setq wind_2 -2558.2)
  
  (if(and (>= height 2400) (< height 3200))
    (progn
      (setq sheet_1 743.29)
      (setq KKD1 (+ KKD1 sheet_1))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "") 

      (setq p1 (list wind_1 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_1 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 
      
      (setq p1 (list wind_2 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_2 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 

      
      (setq KKD1 (+ KKD1 6.25))
     	(command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
      
      (setq KKD1 (- KKD1 6.25))
      (setq KKD1 (+ KKD1 windbar_height))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   
    )  
  )
   
  
  (if(and (>= height 3200) (< height 4000))
    (progn
      (setq sheet_1 643.29)
      (setq KKD1 (+ KKD1 sheet_1))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   

      (setq p1 (list wind_1 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_1 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 
      
      (setq p1 (list wind_2 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_2 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 

      
      
      (setq KKD1 (+ KKD1 6.25))
     	(command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
      (setq KKD1 (- KKD1 6.25))
      (setq KKD1 (+ KKD1 windbar_height))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   
      (setq sheet_1 743.29)
      (setq KKD1 (+ KKD1 sheet_1))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   

      (setq p1 (list wind_1 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_1 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 
      
      (setq p1 (list wind_2 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_2 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 

      
      (setq KKD1 (+ KKD1 6.25))
     	(command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
      (setq KKD1 (- KKD1 6.25))

      (setq KKD1 (+ KKD1 windbar_height))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   
    )  
  )
  (if(and (>= height 4000) (< height 5500))
    (progn
      (setq sheet_1 693.29)
      (setq KKD1 (+ KKD1 sheet_1))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   

      (setq p1 (list wind_1 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_1 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 
      
      (setq p1 (list wind_2 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_2 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 

      
      (setq KKD1 (+ KKD1 6.25))
     	(command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
      (setq KKD1 (- KKD1 6.25))

      (setq KKD1 (+ KKD1 windbar_height))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   

      (setq sheet_1 643.29)
      (setq KKD1 (+ KKD1 sheet_1))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   

      (setq p1 (list wind_1 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_1 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 
      
      (setq p1 (list wind_2 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_2 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 

      
      (setq KKD1 (+ KKD1 6.25))
     	(command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
      (setq KKD1 (- KKD1 6.25))

      (setq KKD1 (+ KKD1 windbar_height))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   
      (setq sheet_1 743.29)
      (setq KKD1 (+ KKD1 sheet_1))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   

      
      (setq p1 (list wind_1 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_1 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 
      
      (setq p1 (list wind_2 KKD1))
      (setq KKD1 (- KKD1 sheet_1))
      (setq p2 (list wind_2 KKD1))
      (command "line" p1 p2 "") 

      (setq KKD1 (+ KKD1 sheet_1)) 

      (setq KKD1 (+ KKD1 6.25))
     	(command "insert" "windbar" (list -2559.2 KKD1) "" "" "")
      (setq KKD1 (- KKD1 6.25))

      (setq KKD1 (+ KKD1 windbar_height))
      (setq KKD2 width) 
      (setq p1 (list 0 KKD1))
      (setq p2 (list KKD2 KKD1))
      (command "line" p1 p2 "")   
    )  
  )
   
    ; (command test2)
; KKD4는 정면도하고 평면도 사이 거리 값
; 사이 간격 변경 1000->1500
   (setq KKD4 2500) 
   (setq KKD1 (+ height KKD4))
  
   (command "insert" "C-1 UP LEFT" (list  0 KKD1) "" "" "")

   (command "insert" "C-1 UP RIGHT" (list width KKD1) "" "" "")

  (setq KKD3 500)
  (setq KKD2 (- width KKD3))
  (setq p1 (list KKD3 KKD1))
  (setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   

   (setq KKD1 (- KKD1 82))
  (setq KKD2 (- width KKD3))
  (setq p1 (list KKD3 KKD1))
  (setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   

  (setq KKD1 (- KKD1 2.5))
  (setq KKD2 (- width KKD3))
  (setq p1 (list KKD3 KKD1))
  (setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   

  (setq KKD1 (- KKD1 135))
  (setq KKD2 (- width KKD3))
  (setq p1 (list KKD3 KKD1))
  (setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   

  (setq KKD1 (- KKD1 2.5))
  (setq KKD2 (- width KKD3))
  (setq p1 (list KKD3 KKD1))
  (setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   

  (setq KKD1 (- KKD1 99.6))
  (setq KKD2 (- width KKD3))
  (setq p1 (list KKD3 KKD1))
  (setq p2 (list KKD2 KKD1))
  (command "line" p1 p2 "")   
  
;글씨 삽입
;  (setq side_distance (- 2500))
; 단면도 글씨 추가  20220819
  (setq text_y (- 600))
  (setq text_x (- 3200))
  (command "insert" "text side" (list text_x text_y) "" "" "")

; 평면도 글씨 추가  20220819
  (setq text_y (- 600))
  (setq text_x (/ width 2))
  (setq text_x (- text_x 671))
  (command "insert" "text front" (list text_x text_y) "" "" "")
  
; 입면도 글씨 추가  20220819
  (setq text_y (+ height 1580))
  (setq text_x (/ width 2))
  (setq text_x (- text_x 671))
  (command "insert" "text front" (list text_x text_y) "" "" "")
;지시선 추가하기
; C-1 틀 추가
  (command "insert" "C-2 BASE" (list -5500 -4500) "" "" "")
  
  
; 지시선 A,B,C 추가 2022-10-13
  (command "insert" "arrow_A" (list -2555 875) "" "" "")
  (setq text_y (+ width 117))
  (command "insert" "arrow_B" (list text_y 228) "" "" "")
  (setq text_y2 (+ height 2400))
  (command "insert" "arrow_C" (list text_y text_y2) "" "" "")
  
 ; controller 추가 2022-10-13
  (command "insert" "controller" (list -500 1200) "" "" "")
  
; motor 지시선 추가 2022-10-13
  (setq text_y (+ height 151))
  (setq text_x (+ width 80))
  (command "insert" "지시선_motor" (list text_x text_y) "" "" "")
  
; sheet 지시선 추가 2022-10-13
  (setq text_y (- width 260))
  (command "insert" "지시선_sheet" (list text_y 670) "" "" "")

 ; photo sensor 추가 2022-10-13
  (command "insert" "photo_sensor" (list 0 600) "" "" "")
  (setq text_y (+ width 14))
  (command "insert" "photo_sensor" (list text_y 600) "" "" "")

 ; photo sensor 지시선 2022-10-13
  (command "insert" "지시선_photosensor" (list -20 590) "" "" "")

; 한점스위치 추가(with 지시선)
  (command "insert" "1point" (list -60 1200) "" "" "")

; 치수선 추가(120mm 140mm)
  (command "insert" "치수선_120_140" (list 0 0) "" "" "")

  
; 치수선 좌우 공간 관련추가(350mm 150mm)
  (command "insert" "치수선_motor_space" (list 0 height) "" "" "")
  (command "insert" "치수선_bearing_space" (list width height) "" "" "")
  
; 치수선 
  (command "DIMLINEAR" (list 0 0) (list width 0) (list 2000 -207.52))  
  (command "DIMLINEAR" (list -2646.23 0) (list -2646.23 height) (list -3000 -207.52))  
 ; (command "matchprop" (list 1036 17142) (list 1500 -300) (list 250 -100))  

  
  (princ) 

  
)