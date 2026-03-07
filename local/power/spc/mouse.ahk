; sc39 & LButton:: {
; }
; sc39 & RButton:: {
;     Click "Left", 2
; }
sc39 & WheelUp:: {
    loop 5 {
        Send("^+{up}")
    }
}

sc39 & WheelDown:: {
    loop 5 {
        Send("^+{down}")
    }
}
