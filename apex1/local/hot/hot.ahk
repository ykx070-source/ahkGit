isHot() {
    hwnd := WinExist("A")
    if !hwnd
        return false
    return WinActive("ahk_exe AutoHotkey64.exe")
}
#HotIf isHot()

; alone
; #Include .\alone\0.ahk
#Include .\alone\1.ahk
; #Include .\alone\2.ahk
#Include .\alone\3.ahk
; #Include .\alone\4.ahk
#Include .\alone\5.ahk
; #Include .\alone\mouse.ahk

#Include .\alt\1.ahk
#Include .\alt\2.ahk
#Include .\alt\3.ahk
#Include .\alt\4.ahk
#Include .\alt\5.ahk

#Include .\x2\mouse.ahk

#HotIf