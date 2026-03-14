global guiIme := 0
global guiIme2 := 0
global prevBgColor := ""
global prevIsImeOn := -1
SetTimer(fxTimerIme, 100)

ReStartImeTimer() {
  SetTimer(fxTimerIme, 100)
}

fxTimerIme() {
  global guiIme, guiIme2, prevIsImeOn, prevBgColor

  try activeWindow := WinGetProcessName("A")

  bgColor :=
    isWatch ? "FF0000"
      : isText ? "0000FF"
        : isPresen ? "00FF00"
          : "FFFFAA"

  isImeOn := fxIsImeOn()
  xPos := 0
  xPos := (!isImeOn) ? A_ScreenWidth / 2 : 0
  yPosi := (!isImeOn) ? A_ScreenHeight / 2 : 0
  ; ===== 初回GUI生成 =====
  if (!IsObject(guiIme)) {
    guiIme := Gui("+AlwaysOnTop +ToolWindow -Caption")
    guiIme.SetFont("s10")
    WinSetTransparent(100, guiIme.Hwnd)
    WinSetExStyle("+0x20", guiIme.Hwnd)
    DllCall("SystemParametersInfo", "uint", 0x57, "uint", 0, "ptr", 0, "uint", 0)
  }
  if (!IsObject(guiIme2)) {
    guiIme2 := Gui("+AlwaysOnTop +ToolWindow -Caption")
    guiIme2.SetFont("s10")
    WinSetTransparent(100, guiIme2.Hwnd)
    WinSetExStyle("+0x20", guiIme2.Hwnd)
  }
  ; ===== 更新用の条件付き =====
  if (bgColor != prevBgColor || isImeOn != prevIsImeOn) {
    guiIme.BackColor := bgColor
    guiIme2.BackColor := bgColor   ; ←追加

    guiIme2.Show("x0 y" yPosi " w25 h5000 NA") ; 左下
    guiIme.Show("x" xPos " y0 w5000 h25 NA") ; 右上

    prevBgColor := bgColor
    prevIsImeOn := isImeOn

    if (isImeOn) {
      h1 := DllCall("LoadCursor", "ptr", 0, "ptr", 32515, "ptr") ; vertical
      DllCall("SetSystemCursor", "ptr", h1, "uint", 32513) ; cross
    } else {
      DllCall("SystemParametersInfo", "uint", 0x57, "uint", 0, "ptr", 0, "uint", 0)
    }
  }
}
