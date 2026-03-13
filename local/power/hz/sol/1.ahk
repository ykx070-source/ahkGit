global booMaster := false
$1:: {
  fxFalseText()
  Send("!{f8}")
}
$2:: {
  fxFalseText()
  global booMaster
  booMaster := !booMaster
  if (booMaster)
    Send("!wm")  ;slideMaster
  else
    Send("!mc") ;slideMasterClose
}
