global booMaster := false
$1:: {
    fxToggleHkk()
    Send("!{f8}")
}
$2:: {
    fxToggleHkk()
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
