#HotIf fxIsApp("msedge") && isText
#Include .\isText\isText.ahk
#HotIf fxIsApp("msedge") && isWatch
#Include .\isWatch\isWatch.ahk
#HotIf fxIsApp("msedge") && isZen
#Include .\isZen\isZen.ahk

#HotIf fxIsTitle("chatgpt")
#Include .\chatgpt\chatgpt.ahk
#HotIf fxIsTitle("youtube")
#Include .\youtube\mouse.ahk

#HotIf fxIsApp("msedge")
#Include .\sol\sol.ahk
#Include .\alt\alt.ahk
#Include .\x2\mouse.ahk