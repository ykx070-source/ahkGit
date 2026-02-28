global penMode := false

f1:: {
    global penMode
    if penMode {
        WinActivate("ahk_exe ScreenPaint.exe")
        send("^+{d}")
        penMode := !penMode
    }
    else {
        Sleep(100)
        send("^+{l}")
        penMode := !penMode
    }
}
f2:: {
    send("^+{Delete}")
}
