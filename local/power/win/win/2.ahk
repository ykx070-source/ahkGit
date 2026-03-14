#tab:: {
  Send("!wqp72{Enter}")
  Send("!gf")
  Sleep(300)
  MouseMove(1637, 600, 0) ; ドラッグ開始位置
  Send("{LButton down}")
  MouseMove(1255, 600, 0) ; 移動先
  Send("{LButton up}")
  Sleep(100)
  MouseMove(1075, 950, 0) ; ドラッグ開始位置
  Send("{LButton down}")
  MouseMove(1075, 890, 0) ; 移動先
  Send("{LButton up}")
  Sleep(10)
  Send("!h") ;ホーム画面
  Sleep(100)
  Send("{esc}")
  Send("{esc}")
}
#q:: {
}
