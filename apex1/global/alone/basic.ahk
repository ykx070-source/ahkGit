; 0
$sc01:: {
    global penMode
    if !WinExist("ahk_exe ScreenPaint.exe") {
        penMode := false
        return
    }
    fxPenMode(
        (*) => (send("^+{Delete}"), send("^+{d}")),
        (*) => send("^+{l}")
    )
    penMode := !penMode
}  ;esc

$f1:: {
    ; send("{" space "}") ;capslocks
}
; 1
$sc29:: hankakuAlone()
$vkF4:: hankakuAlone()
; 2
; $sc0F:: send("{" codeObj["backspace"] "}") ;tab
; 3
; $sc3A:: send("{" codeObj["space"] "}") ;capslocks
