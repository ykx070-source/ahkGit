#HotIf fxIsApp("POWERPNT")
; x2
#Include .\x2\mouse.ahk
; x1
#Include .\x1\mouse.ahk
#Include .\x1\1.ahk
#Include .\x1\2.ahk
#Include .\x1\3.ahk
#Include .\x1\4.ahk
#Include .\x1\5.ahk

#HotIf fxIsApp("POWERPNT") && isPresen
#Include .\f1\sol\mouse.ahk
#Include .\f1\sol\1.ahk
#Include .\f1\sol\2.ahk
#Include .\f1\sol\3.ahk
#Include .\f1\sol\4.ahk
#Include .\f1\sol\5.ahk

#HotIf fxIsClass("NUIDialog")
#Include .\solNui\sol.ahk

#HotIf