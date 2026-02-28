$sc01:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0) ;esc
; 1
$sc29:: send("{" scZero "}") ;hankakuPc
$vkF4:: send("{" scZero "}") ;hankakuPro
; 2
$sc0F:: send("{" scBackspace "}") ;tab
; 3
$sc3A:: send("{" scSpace "}") ;capslocks
