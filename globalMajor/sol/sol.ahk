; 0
; $f1:: {
; }
; $f2:: {
; }
; 1
$sc29:: fxNoneHzGlobal()
$vkF4:: fxNoneHzGlobal()
fxNoneHzGlobal() {
  fxToggleMode("text")
}
; 2
$tab:: {
  send("{backspace}")
}
; 3
$sc3A:: {
  send("{space}")
}
; mouse
MButton:: {
  fxMachine(
    (*) => fxSleep(),
    (*) => fxScreenOff()
  )
}
