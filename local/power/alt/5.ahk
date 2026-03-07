!LCtrl:: {
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
!Lwin:: {
}
