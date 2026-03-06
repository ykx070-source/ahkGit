global booMaster := false
$1:: {
    fxToggleHkk()
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
$2:: {
    fxToggleHkk()
    Send("!{f8}")
}
