global manualSuspend := false
global guiImeHorizontal := 0
global guiImeVertical := 0
global prevBgColor := ""
global prevIsImeOn := -1
global isImeGuiMade := false
SetTimer(fxTimerIme, 100)

fxTimerIme() {

  MouseGetPos(&x, &y)
  fxMachine(
    (*) => Suspend((y < 4 && x < 4) || manualSuspend),
    (*) => 0
  )

  global guiImeHorizontal, guiImeVertical, prevIsImeOn, prevBgColor, isImeGuiMade

  try activeWindow := WinGetProcessName("A")

  bgColor :=
    isWatch ? "FF0000"
      : isText ? "0000FF"
        : isPresen ? "00FF00"
          : isZen ? "A855F7"
            : isBracket ? "00FFFF"
              : "FFFFAA"
  ; FF8800（オレンジ）00FFFF（シアン）FF00FF（マゼンタ）FFD400（ゴールド）00AAFF（スカイブルー）

  isImeOn := fxIsImeOn()
  width := 8
  yPosi := (isImeOn) ? A_ScreenWidth - width : 0
  ; 初回
  if (!isImeGuiMade) {
    guiImeHorizontal := fxMakeImeGui()
    guiImeVertical := fxMakeImeGui()
    DllCall("SystemParametersInfo", "uint", 0x57, "uint", 0, "ptr", 0, "uint", 0)
    isImeGuiMade := true
  }
  ; 更新
  if (bgColor != prevBgColor || isImeOn != prevIsImeOn) {
    guiImeHorizontal.BackColor := bgColor
    guiImeVertical.BackColor := bgColor   ; ←追加

    guiImeVertical.Show("x" yPosi " y0 w" width " h5000 NA") ; 左下
    guiImeHorizontal.Show("x0 y0 w5000 h" width " NA") ; 右上

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
