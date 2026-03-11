global guiIme := 0
global prevIsImeOn := -1
global prevBgColor := ""
SetTimer(fxTimerIme, 100)
fxTimerIme() {
  global guiIme, prevIsImeOn, prevBgColor

  if isEsc
    bgColor := "FF0000"  ; 赤
  else if isHz
    bgColor := "0000FF"  ; 青
  else if isShow
    bgColor := "00FF00"  ; 緑
  else
    bgColor := "FFFFAA"  ; 黄
  isImeOn := fxIsImeOn()
  xPos := 0
  fxMachine(
    (*) => xPos := (!isImeOn) ? 1000 : 0,
    (*) => xPos := (!isImeOn) ? 1350 : 0,
  )
  ; ===== 初回GUI生成 =====
  if (!IsObject(guiIme)) {
    guiIme := Gui("+AlwaysOnTop +ToolWindow -Caption")
    guiIme.SetFont("s10")
    WinSetTransparent(100, guiIme.Hwnd)
    WinSetExStyle("+0x20", guiIme.Hwnd)
    DllCall("SystemParametersInfo", "uint", 0x57, "uint", 0, "ptr", 0, "uint", 0)
  }
  ; ===== 更新用の条件付き =====
  if (!IsObject(guiIme) || bgColor != prevBgColor || isImeOn != prevIsImeOn) {
    guiIme.BackColor := bgColor
    guiIme.Show("x" xPos " y0 w5000 h30 NA")
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
