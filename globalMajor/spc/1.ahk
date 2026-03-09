hankakuSpc() {
  send("!{f4}")
}
space & sc29:: hankakuSpc()
space & vkF4:: hankakuSpc()

space & 1:: {
  send("{6}")
}
space & 2:: {
  send("{7}")
}
space & 3:: {
  send("{8}")
}
space & 4:: {
  send("{9}")
}
space & 5:: {
  targetClass := "wndclass_desked_gsk"
  targetExe := "POWERPNT.exe"

  ; ウィンドウが存在するか確認
  hWnd := WinExist("ahk_class " targetClass)

  if hWnd  ; ウィンドウが存在すれば
  {
    WinActivate("ahk_id " . hWnd)   ; ここを修正
    ; WinRestore("ahk_id " . hWnd)
  }
  else      ; なければ起動
  {
    Run targetExe
    WinWait("ahk_class " . targetClass)
    WinActivate("ahk_class " . targetClass)
  }
}
