(defun c1_drum_block () 
  (command "insert" "C-1 DRUM LEFT" (list 0 height) "" "" "")
  (command "insert" "C-1 DRUM RIGHT" (list width height) "" "" "")
  (command "insert" "C-1 DRUM SIDE" (list side_distance height) "" "" "")
)
(defun c1s_drum_block () 
  (command "insert" "C-1S DRUM LEFT" (list 0 height) "" "" "")
  (command "insert" "C-1S DRUM RIGHT" (list width height) "" "" "")
  (command "insert" "C-1S DRUM SIDE" (list side_distance height) "" "" "")
)
(defun c2_drum_block () 
  (command "insert" "c2drumleft" (list 0 height) "" "" "")
  (command "insert" "c2drumright" (list width height) "" "" "")
  (command "insert" "c2side" (list side_distance height) "" "" "")
)
(defun c3_drum_block () 
  (command "insert" "c3drumleft" (list 0 height) "" "" "")
  (command "insert" "c3drumright" (list width height) "" "" "")
  (command "insert" "c3side" (list side_distance height) "" "" "")
)
(defun dim_line () 

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
  (command "insert" "지시선_motor" (list -2650 text_y) "" "" "")

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



  ; 치수선
  (command "DIMLINEAR" (list 0 0) (list width 0) (list 2000 -207.52))
  (command "DIMLINEAR" 
           (list -2646.23 0)
           (list -2646.23 height)
           (list -3000 -207.52)
  )

  ; 측면도 아래선 그리기
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 141.71)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
  (setq p2 (list side_distance 0))
  (command "line" p2 p1 "")
)
(defun dim_line_c3 () 

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


  ; controller 추가 2022-10-13
  (command "insert" "controller" (list -500 1200) "" "" "")

  ; motor 지시선 추가 2022-10-13
  (setq text_y (+ height 128))
  (setq text_x (+ width 151))
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
  (command "insert" "1point" (list -124 1200) "" "" "")

  ; 치수선 추가(195mm)
  (command "insert" "c3dim195" (list 0 0) "" "" "")



  ; 치수선
  (command "DIMLINEAR" (list 0 0) (list width 0) (list 2000 -207.52))
  (command "DIMLINEAR" 
           (list -2946.23 0)
           (list -2946.23 height)
           (list -3300 -207.52)
  )

  ; 측면도 아래선 그리기
  (setq KKD1 (- height 500))
  (setq KKD2 side_distance)
  (setq KKD3 141.71)
  (setq KKD2 (- KKD2 KKD3))
  (setq p1 (list KKD2 0))
  (setq p2 (list side_distance 0))
  (command "line" p2 p1 "")
)
(defun c1_base () 
  ; C-1 틀 추가
  (command "insert" "C-1 BASE" (list -5500 -4500) "" "" "")
  ; 치수선 좌우 공간 관련추가(350mm 150mm)
  (command "insert" "치수선_motor_space" (list 0 height) "" "" "")
  (command "insert" "치수선_bearing_space" (list width height) "" "" "")
)
(defun c1s_base () 
  ; C-1S 틀 추가
  (command "insert" "C-1 BASE" (list -5500 -4500) "" "" "")
  ; 치수선 좌우 공간 관련추가(350mm 150mm)
  (setq temp1 (- height c1sdim_const))
  (command "insert" "치수선_motor_space" (list 0 temp1) "" "" "")
  (command "insert" "치수선_bearing_space" (list width temp1) "" "" "")
)
(defun c2_base () 
  ; C-2 틀 추가
  (command "insert" "C-2 BASE" (list -5500 -4500) "" "" "")
  ; 치수선 좌우 공간 관련추가(200mm 150mm)
  (command "insert" "치수선_bearing_space_c2" (list 0 height) "" "" "")
  (command "insert" "치수선_motor_space_c2" (list width height) "" "" "")
) 
(defun c3_base () 
  ; C-3 틀 추가
  (command "insert" "c-3 base" (list -5500 -4500) "" "" "")
  ; 치수선 좌우 공간 관련추가(200mm 150mm)
  (command "insert" "c3dim200mm" (list 0 height) "" "" "")
  (command "insert" "c3dim350mm" (list width height) "" "" "")
  (command "insert" "c3sidedim" (list side_distance height) "" "" "")
) 
(defun outLINE() 
  (setq KKD1 0)
  (setq slist (list 0 800 800 400 400 400 400 800 400 400 1200))
  (foreach kim slist 
    (setq KKD1 (+ KKD1 kim))
    (setq p1 (list 0 KKD1))
    (setq p2 (list 3000 KKD1))
    (command "line" p1 p2 "")
  )
  (setq KKD1 0)
  (setq slist (list 0 3000))
    (foreach kim slist 
    (setq KKD1 (+ KKD1 kim))
    (setq p1 (list KKD1 0))
    (setq p2 (list KKD1 6000))
    (command "line" p1 p2 "")
  )
  (setq KKD1 0)
  (setq slist (list 300 1500 700))
    (foreach kim slist 
    (setq KKD1 (+ KKD1 kim))
    (setq p1 (list KKD1 0))
    (setq p2 (list KKD1 4800))
    (command "line" p1 p2 "")
  )
)
(defun c1_drum_line_draw () 
  ; 드럼 parts
  (c1_drum_block)
  (setq KKD1 0)
  (setq slist (list 319.65 221.46 218.96 83.96 81.46 0))
  (foreach kim slist 
    (setq KKD1 (+ height kim))
    (setq KKD2 (- width 501.68))
    (setq p1 (list 501.68 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
  ;  평면도 추가
  (setq KKD1 (+ height up_distance))
  (command "insert" "C-1 UP LEFT" (list 0 KKD1) "" "" "")
  (command "insert" "C-1 UP RIGHT" (list width KKD1) "" "" "")
  (setq slist (list 0 82 2.5 135 2.5 99.6))
  (foreach kim slist 
    (setq KKD3 501.68)
    (setq KKD1 (- KKD1 kim))
    (setq KKD2 (- width KKD3))
    (setq p1 (list KKD3 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)
(defun c1s_drum_line_draw () 
  ; 드럼 parts
  (c1s_drum_block)
  (setq slist (list 0 49.29 2.5 135 2.5 63.61))
  (setq KKD1 0)
  (foreach kim slist 
    (setq KKD1 (+ KKD1 kim))
    (setq KKD3 (+ height KKD1))
    (setq KKD2 (- width 501.68))
    (setq p1 (list 501.68 KKD3))
    (setq p2 (list KKD2 KKD3))
    (command "line" p1 p2 "")
  )
  ;  평면도 추가
  (setq KKD1 (+ height up_distance))
  (command "insert" "C-1S UP LEFT" (list 0 KKD1) "" "" "")
  (command "insert" "C-1S UP RIGHT" (list width KKD1) "" "" "")
  (setq slist (list 0 74.12 2.5 67.5 67.5 2.5 53.04))
  (foreach kim slist 
    (setq KKD3 501.68)
    (setq KKD1 (- KKD1 kim))
    (setq KKD2 (- width KKD3))
    (setq p1 (list KKD3 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)

(defun c2_drum_line_draw () 
  ; 드럼 parts
  (c2_drum_block)
  (setq slist (list 382.88 296.98 289.98 188.98 87.98 80.98 0))
  (foreach kim slist 
    (setq KKD1 (+ height kim))
    (setq KKD2 (- width 501.68))
    (setq p1 (list 501.68 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
  ;  평면도 추가
  (setq KKD1 (+ height up_distance))
  (command "insert" "C-2 UP LEFT" (list 0 KKD1) "" "" "")
  (command "insert" "C-2 UP RIGHT" (list width KKD1) "" "" "")
  (setq slist (list 0 1.6 65.4 7 101 101 7 71.9))
  (foreach kim slist 
    (setq KKD3 501.68)

    (setq KKD1 (- KKD1 kim))
    (setq KKD2 (- width KKD3))
    (setq p1 (list KKD3 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)
(defun c3_drum_line_draw () 
  ; 드럼 parts
  (c3_drum_block)
  (setq slist (list 0 176.81 179.31 246.81 314.31 316.81 455.85))
  (foreach kim slist 
    (setq KKD1 (+ height kim))
    (setq KKD2 (- width 501.68))
    (setq p1 (list 501.68 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
  ;  평면도 추가
  (setq KKD1 (+ height up_distance))
  (command "insert" "C-3 UP LEFT" (list 0 KKD1) "" "" "")
  (command "insert" "C-3 UP RIGHT" (list width KKD1) "" "" "")
  (setq slist (list 0 43.44 2.5 135 2.5 123 2.5 67.5 67.5 2.5 139.52))
  (foreach kim slist 
    (setq KKD3 501.68)

    (setq KKD1 (- KKD1 kim))
    (setq KKD2 (- width KKD3))
    (setq p1 (list KKD3 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)
(defun c1_frame_bottom_base () 
  (setq temp (+ side_distance -59.2))
  (command "insert" "bottom c-1 side2" (list temp 0) "" "" "")
  ; 왼쪽 프레임 그리기
  ; (setq slist2 (list 0 -121.8044 -121.6844 -1.6844 -5.1544 -5.4744 -26.644 -27.4844
  ;                    -28.6644 -30.0144 -30.5244 -59.3444 -60.1544 -60.8644 -62.4644
  ;                    -63.1744 -63.9844 -93.1344 -93.6244 -94.9744 -96.1544
  ;              )
  ; )
  (setq slist2 (list 0 -121.8044 -121.6844 -1.6844 -5.1544 -5.4744 -26.644 -27.4844 
                     -28.6644 -30.0144 -30.5244 -59.3444 -60.1544 -60.8644 -62.4644 
                     -63.1744 -63.9844 -93.1344 -93.6244 -94.9744 -96.1544
               )
  )
  (foreach kim2 slist2 
    (setq KKD1 (- height 500))
    (setq KKD2 kim2)
    (setq KKD20 (+ KKD2 1.68))
    (setq p1 (list KKD20 0))
    (setq p2 (list KKD20 KKD1))
    (command "line" p2 p1 "")
  )

  ;  오른쪽 프레임
  (setq slist3 (list 0 1.68 5.15 5.47 26.6 27.48 28.66 30.01 30.52 59.33 60.15 60.86 
                     62.46 63.17 63.98 93.13 93.62 94.97 96.15 97.03 121.68 121.8
               )
  )
  (foreach kim3 slist3 
    (setq KKD1 (- height 500))
    (setq KKD2 kim3)
    (setq KKD10 (- width 1.68))
    (setq KKD2 (+ KKD10 KKD2))
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )

  ; 아래선 그리기
  (setq KKD1 (+ width 121.8))
  (setq KKD2 -121.8)
  (setq p1 (list KKD2 0))
  (setq p2 (list KKD1 0))
  (command "line" p2 p1 "")

  ; 측면도 그리기

  (setq slist4 (list 0 59.2 69.71 70.21 94.21 105.23 141.71 94.71))
  (foreach kim4 slist4 
    (setq KKD1 (- height 500))
    (setq KKD2 side_distance)
    (setq KKD3 kim4)
    (setq KKD2 (- KKD2 KKD3))
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )
  ; 정면도 그리기(bottom bar)
  (setq KKD1 bottombar_height)
  (setq slist5 (list 0 bottom_sheet_height windbar_height color_tie_height))
  (foreach kim5 slist5 
    (setq KKD1 (+ KKD1 kim5))
    (setq KKD2 width)
    (setq p1 (list 0 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
  (setq KKD1 (+ KKD1 nocolor_height))
  (setq temp (+ side_distance -59.2))
  (command "insert" "winbar2" (list temp KKD1) "" "" "")

  (setq slist5 (list 0 color_tie_height windbar_height))
  (foreach kim5 slist5 
    (setq KKD1 (+ KKD1 kim5))
    (setq KKD2 width)
    (setq p1 (list 0 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)
(defun c2_frame_bottom_base () 
  (setq temp (+ side_distance -59.2))
  (command "insert" "bottom c-1 side2" (list temp 0) "" "" "")
  ; 왼쪽 프레임 그리기
  (setq slist2 (list 0 -121.8044 -121.6844 -1.6844 -5.1544 -5.4744 -26.644 -27.4844 
                     -28.6644 -30.0144 -30.5244 -59.3444 -60.1544 -60.8644 -62.4644 
                     -63.1744 -63.9844 -93.1344 -93.6244 -94.9744 -96.1544
               )
  )
  (foreach kim2 slist2 
    (setq KKD1 (- height 500))
    (setq KKD2 kim2)
    (setq KKD20 (+ KKD2 1.68))
    (setq p1 (list KKD20 0))
    (setq p2 (list KKD20 KKD1))
    (command "line" p2 p1 "")
  )

  ;  오른쪽 프레임
  (setq slist3 (list 0 1.68 5.15 5.47 26.6 27.48 28.66 30.01 30.52 59.33 60.15 60.86 
                     62.46 63.17 63.98 93.13 93.62 94.97 96.15 97.03 121.68 121.8
               )
  )
  (foreach kim3 slist3 
    (setq KKD1 (- height 500))
    (setq KKD2 kim3)
    (setq KKD10 (- width 1.68))
    (setq KKD2 (+ KKD10 KKD2))
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )

  ; 아래선 그리기
  (setq KKD1 (+ width 121.8))
  (setq KKD2 -121.8)
  (setq p1 (list KKD2 0))
  (setq p2 (list KKD1 0))
  (command "line" p2 p1 "")

  ; 측면도 그리기

  (setq slist4 (list 0 59.2 69.71 70.21 94.21 105.23 141.71 94.71))
  (foreach kim4 slist4 
    (setq KKD1 (- height 500))
    (setq KKD2 side_distance)
    (setq KKD3 kim4)
    (setq KKD2 (- KKD2 KKD3))
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )
  ; 정면도 그리기(bottom bar)
  (setq KKD1 bottombar_height)
  (setq slist5 (list 0 bottom_sheet_height windbar_height color_tie_height))
  (foreach kim5 slist5 
    (setq KKD1 (+ KKD1 kim5))
    (setq KKD2 width)
    (setq p1 (list 0 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
  (setq KKD1 (+ KKD1 c2_nocolor_height))
  (setq temp (+ side_distance -59.2))
  (command "insert" "winbar2" (list temp KKD1) "" "" "")

  (setq slist5 (list 0 color_tie_height windbar_height))
  (foreach kim5 slist5 
    (setq KKD1 (+ KKD1 kim5))
    (setq KKD2 width)
    (setq p1 (list 0 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)
(defun c3_frame_bottom_base () 
  (setq temp (+ side_distance -59.2))
  ; (command "insert" "bottom c-1 side2" (list temp 0) "" "" "")
  ; 왼쪽 프레임 그리기
  (setq slist2 (list 5.5 0 -44.8 -180.57))
  (foreach kim2 slist2 
    (setq KKD1 (- height 500))
    (setq KKD2 kim2)
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )
  ;  오른쪽 프레임
  (setq slist3 (list -5.5 0 44.8 180.57))
  (foreach kim3 slist3 
    (setq KKD1 (- height 500))
    (setq KKD2 kim3)
    (setq KKD2 (+ width KKD2))
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )
  ; 아래선 그리기
  (setq KKD1 (+ width 180.57))
  (setq KKD2 -180.57)
  (setq p1 (list KKD2 0))
  (setq p2 (list KKD1 0))
  (command "line" p2 p1 "")

  ; 방풍시트 그리기
  (setq KKD1 width)
  (setq KKD2 -180.57)
  (setq p1 (list 0 bottom_sheet_height_c3))
  (setq p2 (list KKD1 bottom_sheet_height_c3))
  (command "line" p2 p1 "")

  ; 투명창 그리기
  (setq KKD1 width)
  (setq KKD1 (- KKD1 tooth_gauage))

  (setq KKD2 tooth_gauage)
  (setq temp1 (+ bottom_sheet_height_c3 last_sheet_height))

  (setq p1 (list KKD2 temp1))
  (setq p2 (list KKD1 temp1))
  (command "line" p2 p1 "")

  (setq temp1 (+ temp1 two_height))
  (setq p1 (list KKD2 temp1))
  (setq p2 (list KKD1 temp1))

  (command "line" p2 p1 "")



  ; 측면도 그리기

  (setq slist4 (list -50 0 3.06 26.5 29.85 32.05 39.65 47.25 54.85 58.26 61.5 83.06 
                     168
               )
  )
  (foreach kim4 slist4 
    (setq KKD1 (- height 500))
    (setq KKD2 side_distance)
    (setq KKD3 kim4)
    (setq KKD2 (- KKD2 KKD3))
    (setq p1 (list KKD2 0))
    (setq p2 (list KKD2 KKD1))
    (command "line" p2 p1 "")
  )
  ; 아래선 그리기
  (setq KKD2 side_distance)
  (setq KKD1 (+ KKD2 50))
  (setq KKD3 (- KKD2 168))
  (setq p1 (list KKD1 0))
  (setq p2 (list KKD3 0))
  (command "line" p2 p1 "")
)
(defun defintion () 
  (setq side_distance (- 2500))
  (setq up_distance 2500)
  (setq bottombar_height 148.67)
  (setq bottom_sheet_height 700)
  (setq windbar_height 52.49)
  (setq color_tie_height 30)
  ; 투명창 높이
  (setq nocolor_height 600)
  ; c2 투명창 높이
  (setq c2_nocolor_height 550)

  (setq sheet_1 (- 850 130))
  (setq sheet_2 (- 750 130))
  (setq sheet_3 (- 800 130))

  (setq c2_sheet_1 (- 680 130))
  (setq c2_sheet_2 (- 600 130))
  (setq c2_sheet_3 (- 700 130))


  (setq base_width_wind 1643.66)
  (setq c2_base_width_wind 1593.66)

  ; C-3
  (setq tooth_gauage 5.5)
  (setq two_height 600)
  (setq last_sheet_height 1200)
  (setq bottom_sheet_height_c3 150)

  ; C-1S
  (setq c1sdim_const 260)
)
(defun draw (sheet) 
  (setq KKD1 (+ c2_base_width_wind sheet))
  (command "insert" "winbar2" (list temp KKD1) "" "" "")

  (setq slist5 (list 30 windbar_height))
  (foreach kim5 slist5 
    (setq KKD1 (+ KKD1 kim5))
    (setq KKD2 width)
    (setq p1 (list 0 KKD1))
    (setq p2 (list KKD2 KKD1))
    (command "line" p1 p2 "")
  )
)
(defun c1_draw_windbar () 
  (if (< height 2400) 
    (progn)
  )
  (if (AND (>= height 2400) (< height 3200)) 
    (progn 
      (draw sheet_1)
    )
  )
  (if (AND (>= height 3200) (< height 4000)) 
    (progn 
      (draw sheet_2)
      (setq sheet (+ sheet_1 sheet_2))
      (draw (+ sheet 112.5))
    )
  )
  (if (AND (>= height 4000) (< height 5500)) 
    (progn 
      (draw sheet_3)
      (setq sheet (+ sheet_3 sheet_2))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
      (setq sheet (+ sheet sheet_1))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
    )
  )
  (if (>= height 5500) 
    (progn 
      (draw sheet_1)
      (setq sheet (+ sheet_1 sheet_2))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
      (setq sheet (+ sheet sheet_1))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
      (setq sheet (+ sheet sheet_1))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
    )
  )
)
(defun c2_draw_windbar () 
  (if (< height 2400) 
    (progn)
  )
  (if (AND (>= height 2400) (< height 3200)) 
    (progn 
      (draw c2_sheet_1)
    )
  )
  (if (AND (>= height 3200) (< height 3700)) 
    (progn 
      (draw c2_sheet_2)
      (setq sheet (+ c2_sheet_1 c2_sheet_2))
      (draw (+ sheet 112.5))
    )
  )
  (if (AND (>= height 3700) (< height 4500)) 
    (progn 
      (draw c2_sheet_3)
      (setq sheet (+ c2_sheet_3 c2_sheet_2))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
      (setq sheet (+ sheet c2_sheet_1))
      (setq sheet (+ sheet 112.5))
      (draw sheet)
    )
  )
  (if (>= height 4500) 
    (progn)
  )
)

(defun get-valid-pannel-height ()
  (setq pannel_height (getreal "판넬두께는 22mm, 16mm?  : "))
  (while (not (or (= pannel_height 22.0) (= pannel_height 16.0)))
    (setq pannel_height (getreal "올바른 값(22 또는 16)을 입력하세요: ")))
)

(defun c:shutter() 
  ; clear
  (alert "This is Autodrawing progrma for COAD.")
  (command "_erase" "_window" '(-10000 -10000) '(30000 30000) "")
  ; (command "select" (list -10000 -10000) (list 30000 30000))
  ; input
;   (setq model (getstring "Enter Door's model ? c-1,c-1s,c-2,c-3 is WIP: "))
  
  (setq companyName (getstring "현장이름은?   : "))
  
  (setq out_width (getreal "외경 높이는?   : "))
  (setq out_height (getreal "외경 폭은?  : "))

  
  (setq in_width (getreal "내경 높이는?   : "))
  (setq in_height (getreal "내경 폭은?  : "))
  
  (setq drum_width (getreal "드럼 길이(기본 730)?   : "))
  (setq drum_height (getreal "드럼 높이(기본605)?  : "))
  	
  
  (get-valid-pannel-height)

  (outLINE)


  (cond 
    ((= model "c-1")
     (c1_drum_line_draw)
     (c1_base)
     (c1_frame_bottom_base)
     (c1_draw_windbar)
     (dim_line)
     (command "insert" "coad_logo" (list -2500 2500) "" "" "")
    )
    ((= model "c-1s")
     (c1s_drum_line_draw)
     (c1s_base)
     (c1_frame_bottom_base)
     (c1_draw_windbar)
     (dim_line)
     (command "insert" "coad_logo" (list -2500 4000) "" "" "")
    )
    ((= model "c-2")
     (c2_drum_line_draw)
     (c2_base)
     (c2_frame_bottom_base)
     (c2_draw_windbar)
     (dim_line)
     (command "insert" "coad_logo" (list -2500 2500) "" "" "")
    )
    ((= model "c-3")
     (c3_drum_line_draw)
     (c3_base)
     (c3_frame_bottom_base)
     ;  (c2_draw_windbar)
     (dim_line_c3)
     (command "insert" "coad_logo" (list -2500 2500) "" "" "")
    )
  )




  (princ)
)