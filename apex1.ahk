; 呪文
#SingleInstance Force
Persistent true
ProcessSetPriority("Realtime")
SendMode("Input")
SetDefaultMouseSpeed(0)
SetKeyDelay(0)
SetTitleMatchMode(2)
DetectHiddenWindows(true)
; icon
TraySetIcon "shell32.dll", 44
; prepare
#Include .\scancode\scancode.ahk
#Include .\function\function.ahk
; main
#Include .\globalMajor\globalMajor.ahk
#Include .\globalMinor\globalMinor.ahk
#Include .\globalBoo\globalBoo.ahk
#Include .\local\local.ahk