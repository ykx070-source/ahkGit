XButton1 & sc3A:: {
  Send("!h")
  Sleep(100)
  Send("{esc}")
  Send("{esc}")
}
XButton1 & a:: {
  Send("!a") ;アニメ
  Sleep(100)
  Send("{esc}")
  Send("{esc}")
}
XButton1 & s:: {
  Send("!as") ;アニメ登録
  Send("{Enter}")
  Send("!as") ;アニメ登録
  Send("{Down}")
  Send("{Enter}")
  Send("!a") ;アニメ
}
XButton1 & d:: {
}
XButton1 & f:: {
  Send("!nzmvp") ;ファイル挿入
  Sleep(300)
  Send("{Tab}")
  Send("{Down}")
  Send("{Home}")
  Send("{Enter}")
}
XButton1 & g:: {
  send("^g") ;グループ化
}
