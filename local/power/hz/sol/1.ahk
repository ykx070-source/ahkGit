global booMaster := false
$1:: {
  fxFalseHz()
  Send("!{f8}")
}
$2:: {
  fxFalseHz()
  global booMaster
  booMaster := !booMaster
  if (booMaster)
    Send("!wm")  ;slideMaster
  else
    Send("!mc") ;slideMasterClose
}
