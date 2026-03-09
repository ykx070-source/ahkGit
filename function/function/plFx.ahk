fxMoveEdgeBookmark(No) {
  Send("^t")       ; 新しいタブ
  Sleep(100)
  Send("{F6}")     ; アドレスバーへ
  Sleep(100)
  loop No {
    Send("{Right}")  ; 次のブックマークへ
    Sleep(10)
  }
  Send("{Enter}")   ; 開く
  Sleep(10)
}
fxExcelReset() {
  send("{LButton}")
  sleep(10)
  send("{Esc}")
  sleep(10)
  send("^g")
  sleep(30)
  fxText("apex!A1")
  sleep(10)
  send("{Enter}")
  sleep(10)
}
