global guiImeHorizontal := 0
global guiImeVertical := 0
global prevBgColor := ""
global prevIsImeOn := -1
global isImeGuiMade := false
SetTimer(fxTimerIme, 100)

ReStartImeTimer() {
  SetTimer(fxTimerIme, 100)
}

fxTimerIme() {
  global guiImeHorizontal, guiImeVertical, prevIsImeOn, prevBgColor, isImeGuiMade

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
  width := 11
  ; ===== 初回GUI生成 =====
  if (!isImeGuiMade) {
    guiImeHorizontal := fxMakeImeGui()
    guiImeVertical := fxMakeImeGui()
    DllCall("SystemParametersInfo", "uint", 0x57, "uint", 0, "ptr", 0, "uint", 0)
    isImeGuiMade := true
  }
  ; ===== 更新用の条件付き =====
  if (bgColor != prevBgColor || isImeOn != prevIsImeOn) {
    guiImeHorizontal.BackColor := bgColor
    guiImeVertical.BackColor := bgColor   ; ←追加

    guiImeVertical.Show("x0 y" yPosi " w" width " h5000 NA") ; 左下
    guiImeHorizontal.Show("x" xPos " y0 w5000 h" width " NA") ; 右上

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
