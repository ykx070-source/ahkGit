global booMaster := false
!sc1D:: {
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
!Lwin:: {
    Send("!{f5}")
}
