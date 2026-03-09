XButton2 & LButton:: {
}
XButton2 & RButton:: {
  Send "{Esc}"
  Send "{Shift down}"
  Send "{LButton down}"
  Send "{Shift up}"
  KeyWait "RButton"
  Send "{LButton up}"
}
XButton2 & WheelUp:: {
  Send("{Left}")
}
XButton2 & WheelDown:: {
  Send("{Right}")
}
XButton2 & XButton1:: {
  send("+!{p}") ;エクスプローラーにフォーカス
  sleep(10)
  send("+!{f}") ;エクスプローラーを折り畳む
  sleep(10)
  send("+!{f}") ;エクスプローラーを折り畳む
  sleep(10)
  send("+!{3}") ;お気に入りを折り畳む
}

; send("+!{u}") ;close all tabs
