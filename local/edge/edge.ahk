#HotIf fxIsApp("msedge") && isWatch
#Include .\esc\sol\1.ahk
#Include .\esc\sol\2.ahk
#Include .\esc\sol\3.ahk
#Include .\esc\sol\4.ahk
#Include .\esc\sol\5.ahk

#HotIf fxIsApp("msedge") && isText
; sol
#Include .\hz\sol\1.ahk
#Include .\hz\sol\2.ahk
#Include .\hz\sol\3.ahk

#HotIf fxIsTitle("ChatGPT")
#Include .\altChatgpt\1.ahk
#Include .\altChatgpt\2.ahk
#Include .\altChatgpt\3.ahk
#HotIf fxIsTitle("YouTube")
#Include .\x2Youtube\mouse.ahk

#HotIf fxIsApp("msedge")
; sol
#Include .\sol\sol.ahk
; alt
#Include .\alt\1.ahk
#Include .\alt\2.ahk
#Include .\alt\3.ahk
#Include .\alt\4.ahk
#Include .\alt\5.ahk
#Include .\x2\mouse.ahk

#HotIf