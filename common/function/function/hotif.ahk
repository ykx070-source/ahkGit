isEdge() {
    return WinActive("ahk_exe msedge.exe")
}
isVscode() {
    return WinActive("ahk_exe Code.exe")
}
isExcel() {
    return WinActive("ahk_exe EXCEL.exe")
}
isExplorer() {
    return WinActive("ahk_exe explorer.exe")
}
isVrew() {
    return WinActive("ahk_exe Vrew.exe")
}
isNui() {
    return WinActive("ahk_class NUIDialog")
}
isScreen() {
    return WinActive("ahk_exe ScreenPaint.exe")
}
isChatgpt() {
    return InStr(WinGetTitle("A"), "ChatGPT")
}
isYoutube() {
    return InStr(WinGetTitle("A"), "YouTube")
}
isPowerScreen() {
    return WinActive("ahk_exe POWERPNT.EXE")
    || WinActive("ahk_exe ScreenPaint.exe")
}
