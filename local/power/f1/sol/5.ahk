$LCtrl:: {
}
$LWin:: {
}
$LAlt:: {
}
$sc7B:: {
  global isShow
  isShow := false
  loop 4 {
    Sleep(200)
    Send("{esc}")
  }
}
$space:: {
  send("{e}")
}
