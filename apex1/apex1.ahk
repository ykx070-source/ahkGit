; 呪文
#SingleInstance Force
Persistent true
ProcessSetPriority("Realtime")
SendMode("Input")
SetDefaultMouseSpeed(0)
SetKeyDelay(0)
SetTitleMatchMode(2)
DetectHiddenWindows(true)
; prepare
#Include .\scancode\scancode.ahk
#Include .\function\function.ahk
; メイン
#Include .\globalMajor\globalMajor.ahk
#Include .\globalMinor\globalMinor.ahk
#Include .\globalHz\globalHz.ahk
#Include .\local\local.ahk
; アイコン
TraySetIcon "shell32.dll", 44