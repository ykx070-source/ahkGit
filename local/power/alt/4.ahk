!sc2A:: {
    send("!{4}")
}
!z:: {
    send("!as")
    loop 7 {
        send("{Down}")
        Sleep(10)
    }
    Send("{Enter}")
    Sleep(10)
    send("!adu")
    Sleep(10)
    send("{0}")
    Sleep(10)
    Send("{Enter}")
}
!x:: {
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
