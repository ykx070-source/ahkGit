global booMaster := false
!LShift:: {
  global booMaster ;マスター切替
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

!c:: {
}
