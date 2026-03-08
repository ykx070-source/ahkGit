; n1
$NumLock:: send("{2}")
$NumpadDiv:: send("{5}")
$NumpadMult:: send("{7}")
$Delete:: {
  if (A_ComputerName = "s") {
    fxSleep()
  } else {
    send("{Delete}")
  }
}
$NumpadSub:: fxSleep()
; n2
$NumpadHome:: send("{c}")
$NumpadUp:: send("{Volume_Up}")
$NumpadAdd:: send("+{.}")
; n3
$NumpadRight:: send("{Right}")
$NumpadClear:: send("{" codeObj["space"] "}")
$NumpadLeft:: send("{Left}")
; n4
$NumpadEnd:: send("{1}")
$NumpadDown:: send("{Volume_Down}")
$NumpadEnter:: send("+{,}")
; n5
$NumpadIns:: send("{0}")
$NumpadDel:: send("{f}")