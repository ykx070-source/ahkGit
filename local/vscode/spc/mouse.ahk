space & LButton:: {
  send("{LButton}")
  sleep(200)
  send("+!{q}") ;close other tabs
  sleep(10)
  send("+!{f}") ;エクスプローラーを折り畳む
  sleep(10)
  send("+!{f}") ;エクスプローラーを折り畳む
  sleep(10)
  send("+!{4}") ;現在のファイルを表示する
  sleep(10)
  send("+!{3}") ;お気に入りを折り畳む
}
; space & RButton:: {
; }
; space & WheelUp:: {
;   loop 5 {
;     Send("^+{up}")
;   }
; }

; space & WheelDown:: {
;   loop 5 {
;     Send("^+{down}")
;   }
; }
