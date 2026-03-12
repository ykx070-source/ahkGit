XButton1 & tab:: {
  fxMoveTab()
}
XButton1 & q:: {
  fxMoveQ()
}
XButton1 & w:: {
  fxMoveW()
}
XButton1 & e:: {
  Send("!jnl") ;動画ループ
}
XButton1 & r:: {
  Send("!as")
  Send("{Down}")
  Send("{Enter}")
  Send("!at")
  Send("{Home}")
  Send("{Down}")
  Send("{Enter}")
  loop 4 {
    Send("!ae")
    Sleep(100)
  }
}
XButton1 & t:: {
  send("!jpc") ;動画トリム
}
