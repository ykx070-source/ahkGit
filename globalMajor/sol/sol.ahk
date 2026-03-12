; toggle
$esc:: {
}
$f2:: {

}
$f3:: {
}
$f4:: {
}
$sc29:: fxNoneHzGlobal()
$vkF4:: fxNoneHzGlobal()
fxNoneHzGlobal() {
  global isEsc, isHz, isShow
  isHz := !isHz
  isEsc := false
  isShow := false
}
; 2
$tab:: {
  send("{backspace}")
}
; 3
$sc3A:: {
  send("{space}")
}
; 5
; LWin:: {
;   send("^{Enter}")
; }

; LWin:: {
; }
