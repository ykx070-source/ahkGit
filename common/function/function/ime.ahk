global myGui := 0
global prevImeState := -1
global prevBgColor := ""
global penMode := false
global prevWidth := 0

SetTimer(guiIme, 100)

guiIme() {
    global myGui, prevImeState, penMode, prevBgColor, prevWidth

    bgColor := penMode ? "FF0000" : "FFFFAA"

    try {
        vcurrentwindow := WinGetID("A")
        imeWnd := DllCall("imm32\ImmGetDefaultIMEWnd", "ptr", vcurrentwindow, "ptr")
        ImeState := DllCall("user32\SendMessageW", "ptr", imeWnd, "uint", 0x0283, "int", 0x0005, "int", 0, "ptr")

        width := (ImeState = 0) ? 100 : 300

        if (A_ComputerName = "PRO7")
            yPos := 1700
        else if (A_ComputerName = "pc")
            yPos := 1020
        else
            yPos := 1000

        ; ===== 初回GUI生成 =====
        if (!IsObject(myGui)) {
            myGui := Gui("+AlwaysOnTop +ToolWindow -Caption")
            myGui.BackColor := bgColor
            myGui.SetFont("s10")
            myGui.Show("x0 y" yPos " w" width " h1000 NA")

            WinSetTransparent(100, myGui.Hwnd)
            WinSetExStyle("+0x20", myGui.Hwnd)

            prevImeState := ImeState
            prevBgColor := bgColor
            prevWidth := width
            return
        }

        ; ===== 色変更（Destroyなし）=====
        if (bgColor != prevBgColor) {
            myGui.BackColor := bgColor
            myGui.Show("NA")
            prevBgColor := bgColor
        }

        ; ===== 幅変更（IME変化）=====
        if (width != prevWidth) {
            myGui.Show("x0 y" yPos " w" width " h1000 NA")
            prevWidth := width
        }

        prevImeState := ImeState
    }
}
