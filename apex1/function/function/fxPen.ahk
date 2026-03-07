fxPen() {
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
}
