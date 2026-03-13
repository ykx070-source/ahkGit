global booMaster := false
Alt & Shift:: {
  global booMaster ;マスター切替
  booMaster := !booMaster
  if (booMaster)
    Send("!wm")  ;slideMaster
  else
    Send("!mc") ;slideMasterClose
}
Alt & z:: {
}
Alt & x:: {
}

Alt & c:: {
}
