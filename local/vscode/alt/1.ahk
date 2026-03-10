fxAltHzVscode() {
  send("+!{r}") ;フォルダ内検索
  Sleep(100)
  Send("{Enter}")
}
!sc29:: fxAltHzVscode()
!vk19:: fxAltHzVscode()
!1:: {
  send("+!{2}") ;複製
}
!2:: {
  send("^!{Enter}")
  Sleep(100)
  send("{Enter}")
}
