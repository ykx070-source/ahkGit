; hankakuSpc() {
; }
; sc39 & sc29:: hankakuSpc()
; sc39 & vkF4:: hankakuSpc()
global booMaster := false
powerpntSpc1() {
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
