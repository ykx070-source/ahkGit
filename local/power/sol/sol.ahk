$f1:: {
  global isShow
  if isShow {
    Send("{esc}")
    Sleep(100)
    Send("{esc}")
  }
  else {
    Send("!{f5}")
    send("^{p}")
    fxImeOff()
  }
  isShow := !isShow
}
