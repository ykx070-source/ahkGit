$f1:: {
  global isShow
  if isShow {
    Send("{esc}")
    Sleep(100)
    Send("{esc}")
  }
  else {
    Send("!{f5}")
    ; Sleep(500)
    send("^{p}")
  }
  isShow := !isShow
}
