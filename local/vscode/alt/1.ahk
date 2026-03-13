fxAltHzVscode() {
  send("+!{r}") ;フォルダ内検索
  Sleep(100)
  Send("{Enter}")
}
Alt & sc29:: fxAltHzVscode()
Alt & vk19:: fxAltHzVscode()
Alt & 1:: {
  send("+!{2}") ;複製
}
Alt & 2:: {
  send("^!{Enter}")
  Sleep(100)
  send("{Enter}")
}
