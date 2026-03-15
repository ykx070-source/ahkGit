fxEdgeFav(No) {
  revisedNo := No - 1
  Send("^t")       ; 新しいタブ
  Sleep(100)
  Send("{F6}")     ; アドレスバーへ
  Sleep(100)
  loop revisedNo {
    Send("{Right}")  ; 次のブックマークへ
    Sleep(10)
  }
  Send("{Enter}")   ; 開く
  Sleep(10)
}
fxExcelReset(title) {
  send("{LButton}")
  sleep(10)
  send("{Esc}")
  sleep(10)
  send("^g")
  sleep(30)
  fxText(title "!A1")
  sleep(10)
  send("{Enter}")
  sleep(10)
}
fxVscodeJump(fileName) {
  Send("^+p")
  Sleep(10)
  Send("{Backspace}")
  Sleep(10)
  SendText(fileName ".ahk")
  Sleep(100)
  Send("{Enter}")
  Sleep(100)
  send("+!{f}") ;エクスプローラーを折り畳む
  sleep(10)
  send("+!{f}") ;エクスプローラーを折り畳む
  sleep(10)
  send("+!{4}") ;現在のファイルを表示する
  sleep(10)
  send("+!{3}") ;お気に入りを折り畳む
}
