#HotIf fxIsTitle("ChatGPT")
#Include .\chatgpt\chatgpt.ahk

#HotIf fxIsTitle("YouTube")
#Include .\youtube\mouse.ahk

#HotIf fxIsApp("msedge")
#Include .\sol\sol.ahk
#Include .\alt\alt.ahk
#Include .\x2\mouse.ahk

#HotIf isWatch
#Include .\isWatch\isWatch.ahk

#HotIf fxIsApp("msedge") && isText
#Include .\isText\isText.ahk

#HotIf