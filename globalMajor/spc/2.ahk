space & tab:: {
  send("{" codeObj["hankaku"] "}")
}
space & q:: {
  send("#{4}")
}
space & w:: {
  send("#{3}")
}
space & e:: {
  send("#{2}")
}
space & r:: {
  targetClass := "PPTFrameClass"
  targetExe := "POWERPNT.exe"

  hWnd := WinExist("ahk_class " targetClass)

  if hWnd {
    WinActivate("ahk_id " . hWnd)
    ; WinRestore("ahk_id " . hWnd)
    ; WinMaximize("ahk_id " . hWnd)  ; ← ここで最大化
  }
  else {
    Run targetExe
    ; 起動してウィンドウができるまで待機
    WinWait("ahk_class " . targetClass)
    hWnd := WinExist("ahk_class " . targetClass)
    ; WinMaximize("ahk_id " . hWnd)  ; ← 最大化
    WinActivate("ahk_id " . hWnd)
  }
  ; send("#{1}")
}
space & t:: {
  send("{0}")
}

space & y:: {
  send("+{Home}")
}
space & u:: {
}
space & i:: {
  send("+{Left}")
}
space & o:: {
  send("+{Right}")
}
space & p:: {
  send("^+{Right}")
}
space & sc1A:: {
  send("+{End}")
}
