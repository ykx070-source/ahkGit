#HotIf isPresen
#Include .\isPresen\isPresen.ahk
#HotIf fxIsClass("NUIDialog")
#Include .\solNui\sol.ahk

#HotIf fxIsApp("POWERPNT") && isFour
a:: {
  Send("!jpsow")
  Sleep(100)
  loop 7 {
    Send("{Down}")
  }
  Send("{Enter}")
  ; Send("!as") ;アニメ登録
  ; Send("{Down}")
  ; Send("{Enter}")
  ; Send("!a") ;アニメ
}
#HotIf

#HotIf fxIsApp("POWERPNT")
#Include .\sol\sol.ahk
#Include .\alt\alt.ahk
#Include .\spc\mouse.ahk
#Include .\win\win.ahk
#Include .\ctl\5.ahk
#Include .\x2\mouse.ahk
#Include .\x1\x1.ahk