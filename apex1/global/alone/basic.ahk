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
    global hotBoo
    MsgBox hotBoo
}
; 1
global myGu := 0
global hotBoo := false
$sc29:: {
    global myGu, hotBoo

    myGu := Gui("+AlwaysOnTop +ToolWindow -Caption")
    ; WinSetExStyle("+0x20", myGu.Hwnd)
    ; myGu.Add("Text", "", "")
    WinSetTransparent(0, myGu.Hwnd)
    myGu.Show("x0 y0 w1 h1")

    hotBoo := true
}
; 2
$sc0F:: send("{" scBackspace "}") ;tab
; 3
$sc3A:: send("{" scSpace "}") ;capslocks
