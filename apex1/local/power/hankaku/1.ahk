; hankakuSpc() {
; }
; sc39 & sc29:: hankakuSpc()
; sc39 & vkF4:: hankakuSpc()
global booMaster := false
powerpnt1() {
    global booMaster
    booMaster := !booMaster
    if (booMaster)
        Send("!wm")  ;slideMaster
    else
        Send("!mc") ;slideMasterClose
}
powerpnt2() {
    Send("!{f8}")
}

; sc39 & 2:: {
;     send("{7}")
; }
; sc39 & 3:: {
;     send("{8}")
; }
; sc39 & 4:: {
;     send("{9}")
; }
; sc39 & 5:: {
; }
