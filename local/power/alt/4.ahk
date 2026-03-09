global booMaster := false
!sc2A:: {
  global booMaster
  booMaster := !booMaster
  if (booMaster)
    Send("!wm")  ;slideMaster
  else
    Send("!mc") ;slideMasterClose
}
!z:: {
}
!x:: {
}
