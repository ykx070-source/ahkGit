global myGui := 0
global prevImeState := -1
global prevBgColor := ""
global penMode := false
global timerEnabled := false

SetTimer(guiIme, 100)

guiIme() {
    global myGui, prevImeState, penMode, prevBgColor

    bgColor := penMode ? "FF0000" : "FFFFAA"

    try {
        vcurrentwindow := WinGetID("A")
        imeWnd := DllCall("imm32\ImmGetDefaultIMEWnd", "ptr", vcurrentwindow, "ptr")
        ImeState := DllCall("user32\SendMessageW", "ptr", imeWnd, "uint", 0x0283, "int", 0x0005, "int", 0, "ptr")

        if (A_ComputerName = "s") {
            xPos := (ImeState = 0) ? 1850 : 1700
        }
        else if (A_ComputerName = "d") {
            xPos := (ImeState = 0) ? 1850 : 1700
        }
        else {
            xPos := 0
        }

        ; ===== 初回GUI生成 =====
        if (!IsObject(myGui)) {
            myGui := Gui("+AlwaysOnTop +ToolWindow -Caption")
            myGui.BackColor := bgColor
            myGui.SetFont("s10")
            myGui.Show("x" xPos "y" 0 " w" 500 " h70 NA")

            WinSetTransparent(100, myGui.Hwnd)
            WinSetExStyle("+0x20", myGui.Hwnd)

            prevImeState := ImeState
            prevBgColor := bgColor
            return
        }

        ; ===== 色変更（Destroyなし）=====
        if (bgColor != prevBgColor) {
            myGui.BackColor := bgColor
            myGui.Show("NA")
            prevBgColor := bgColor
        }

        ; ===== 幅変更（IME変化）=====
        if (ImeState != prevImeState) {
            myGui.Show("x" xPos "y" 0 " w" 300 " h70 NA")
        }

        prevImeState := ImeState
    }
}
