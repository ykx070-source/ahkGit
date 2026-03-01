global myGui := 0
global prevImeState := -1
global prevBgColor := ""
global penMode := false
global timerEnabled := false

SetTimer(guiIme, 100)
guiIme() {
    global myGui, prevImeState, penMode, prevBgColor, hotBoo

    if penMode
        bgColor := "FF0000"  ; 赤
    else if hotBoo
        bgColor := "0000FF"  ; 青
    else
        bgColor := "FFFFAA"  ; 黄色

    try {
        vcurrentwindow := WinGetID("A")
        imeWnd := DllCall("imm32\ImmGetDefaultIMEWnd", "ptr", vcurrentwindow, "ptr")
        ImeState := DllCall("user32\SendMessageW", "ptr", imeWnd, "uint", 0x0283, "int", 0x0005, "int", 0, "ptr")

        if (A_ComputerName = "s") {
            xPos := (ImeState = 0) ? 1350 : 0
        } else if (A_ComputerName = "d") {
            xPos := (ImeState = 0) ? 1000 : 0
        } else {
            xPos := 0
        }

        ; ===== 初回GUI生成 =====
        if (!IsObject(myGui)) {
            myGui := Gui("+AlwaysOnTop +ToolWindow -Caption")
            myGui.SetFont("s10")
            WinSetTransparent(100, myGui.Hwnd)
            WinSetExStyle("+0x20", myGui.Hwnd)
        }

        ; ===== 更新用の条件付き =====
        if (!IsObject(myGui) || bgColor != prevBgColor || ImeState != prevImeState) {
            myGui.BackColor := bgColor
            myGui.Show("x" xPos " y0 w5000 h30 NA")
            prevBgColor := bgColor
            prevImeState := ImeState
        }
    }
}
