$LCtrl:: {
  send("{e}")
}
$LWin:: {
}
$LAlt:: {
}
$sc7B:: {
  fxMoveMuhenkan()
}
$space:: {
  global isShow
  isShow := false
  Send("{esc}")
  Sleep(100)
  Send("{esc}")
}
