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
; 1
$sc29:: send("{" scZero "}") ;dHankaku
$vkF4:: send("{" scZero "}") ;hankakuPro
; 2
$sc0F:: send("{" scBackspace "}") ;tab
; 3
$sc3A:: send("{" scSpace "}") ;capslocks
