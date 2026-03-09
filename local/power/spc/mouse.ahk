; space & LButton:: {
; }
; space & RButton:: {
;     Click "Left", 2
; }
space & WheelUp:: {
  loop 5 {
    Send("^+{up}")
  }
}

space & WheelDown:: {
  loop 5 {
    Send("^+{down}")
  }
}
