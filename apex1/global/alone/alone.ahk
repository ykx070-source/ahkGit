$F1:: {
    Run(A_ScriptDir "\..\apex2\apex2.ahk")
    ExitApp()
}
$sc01:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)

; $sc01:: send("{" scTab "}") ;esc
; $sc29:: send("{" scEnter "}") ;hankaku(pc)
; $vkF4:: send("{" scEnter "}") ;hankaku(pro7)
$sc0F:: send("{" scBackspace "}") ;tab
$sc3A:: send("{" scSpace "}") ;capslocks

$NumpadRight:: send("{Right}")
$NumpadLeft:: send("{Left}")

$NumpadClear:: send("{" scSpace "}")

$NumpadUp:: send("{Volume_Up}")
$NumpadDown:: send("{Volume_Down}")

; $NumpadPgUp:: send("+{;}")
; $NumpadPgDn:: send("{-}")
$NumpadAdd:: send("+{.}")
$NumpadEnter:: send("+{,}")

$NumpadDel:: send("{f}")
$NumpadHome:: send("{c}")

$NumpadIns:: send("{0}")
$NumpadEnd:: send("{1}")
$NumLock:: send("{2}")
$NumpadDiv:: send("{4}")
$NumpadMult:: send("{6}")
$NumpadSub:: send("{8}")