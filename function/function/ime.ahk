global myGui := 0
global prevImeState := -1
global prevWindowState := ""
global prevBgColor := ""
global penMode := false
global timerEnabled := false
; global appId := ""
SetTimer(guiIme, 100)
guiIme() {
  global myGui, prevImeState, penMode, prevBgColor, isHz, prevWindowState, isEsc, isShow
  if isEsc
    bgColor := "FF0000"  ; 赤
  else if isHz
    bgColor := "0000FF"  ; 青
  else if isShow
    bgColor := "00FF00"  ; 緑
  else
    bgColor := "FFFFAA"  ; 黄色

  try {

    isImeOn := fxIsImeOn()

    if (A_ComputerName = "s") {
      xPos := (!isImeOn) ? 1350 : 0
    } else if (A_ComputerName = "d") {
      xPos := (!isImeOn) ? 1000 : 0
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
    if (!IsObject(myGui) || bgColor != prevBgColor || isImeOn != prevImeState) {
      myGui.BackColor := bgColor
      myGui.Show("x" xPos " y0 w5000 h30 NA")
      prevBgColor := bgColor
      prevImeState := isImeOn
    }
  }
}
