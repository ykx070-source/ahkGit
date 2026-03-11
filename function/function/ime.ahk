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
  if A_ComputerName = "s"
    xPos := (!isImeOn) ? 1350 : 0
  else if A_ComputerName = "d"
    xPos := (!isImeOn) ? 1000 : 0
  else
    xPos := 0
  ; ===== 初回GUI生成 =====
  if (!IsObject(guiIme)) {
    guiIme := Gui("+AlwaysOnTop +ToolWindow -Caption")
    guiIme.SetFont("s10")
    WinSetTransparent(100, guiIme.Hwnd)
    WinSetExStyle("+0x20", guiIme.Hwnd)

  }
  ; ===== 更新用の条件付き =====
  if (!IsObject(guiIme) || bgColor != prevBgColor || isImeOn != prevIsImeOn) {
    guiIme.BackColor := bgColor
    guiIme.Show("x" xPos " y0 w5000 h30 NA")
    prevBgColor := bgColor
    prevIsImeOn := isImeOn

    h2 := DllCall("LoadCursor", "ptr", 0, "ptr", 32651, "ptr") ; on normal
    DllCall("SetSystemCursor", "ptr", h2, "uint", 32512) ;off normal arrow
    ; text
    h1 := DllCall("LoadCursor", "ptr", 0, "ptr", 32515, "ptr") ; on text cross
    DllCall("SetSystemCursor", "ptr", h1, "uint", 32513) ; off text I
  }
}
