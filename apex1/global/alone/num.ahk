; n1
$NumLock:: send("{2}")
$NumpadDiv:: send("{5}")
$NumpadMult:: send("{7}")
$Delete:: {
    if (A_ComputerName = "s") {
        DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    } else {
        send("{Delete}")
    }
}
$NumpadSub:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
; n2
$NumpadHome:: send("{c}")
$NumpadUp:: send("{Volume_Up}")
$NumpadAdd:: send("+{.}")
; n3
$NumpadRight:: send("{Right}")
$NumpadClear:: send("{" scSpace "}")
$NumpadLeft:: send("{Left}")
; n4
$NumpadEnd:: send("{1}")
$NumpadDown:: send("{Volume_Down}")
$NumpadEnter:: send("+{,}")
; n5
$NumpadIns:: send("{0}")
$NumpadDel:: send("{f}")