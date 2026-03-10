; toggle
$esc:: {
  global isEsc, isHz, isShow
  isEsc := !isEsc
  isHz := false
  isShow := false
}
$f2:: {
  ImmGetContext := DllCall("imm32\ImmGetContext", "ptr", WinActive("A"), "ptr")
  DllCall("imm32\ImmSetOpenStatus", "ptr", ImmGetContext, "int", 0)
  DllCall("imm32\ImmReleaseContext", "ptr", WinActive("A"), "ptr", ImmGetContext)
}
$sc29:: hankakuAlone()
$vkF4:: hankakuAlone()
hankakuAlone() {
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
LWin:: {
  send("^{Enter}")
}
