; 0
$f1:: {
  global booF1, booHkk
  booF1 := !booF1
  booHkk := false
}
$f2:: {
  BlockInput("MouseMove")
}
; 1
$sc29:: hankakuAlone()
$vkF4:: hankakuAlone()
hankakuAlone() {
  global booF1, booHkk
  booHkk := !booHkk
  booF1 := false
}
; 2
$tab:: send("{" codeObj["backspace"] "}")

; 3
$sc3A:: send("{" codeObj["space"] "}")

; 5
LWin:: {
  send("^{Enter}")
}
