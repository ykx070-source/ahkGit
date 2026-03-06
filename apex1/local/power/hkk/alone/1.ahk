; hankakuSpc() {
; }
; sc39 & sc29:: hankakuSpc()
; sc39 & vkF4:: hankakuSpc()
global booMaster := false
powerpntNone1() {
    Send("!{f8}")
}
powerpntNone2() {
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
