$sc01:: {
    global penMode
    if penMode {
        send("^+{Delete}")
        send("^+{d}")
    }
    else {
        send("^+{l}")
    }
    penMode := !penMode
}  ;esc
; 1
$sc29:: send("{" scZero "}") ;hankakuPc
$vkF4:: send("{" scZero "}") ;hankakuPro
; 2
$sc0F:: send("{" scBackspace "}") ;tab
; 3
$sc3A:: send("{" scSpace "}") ;capslocks
