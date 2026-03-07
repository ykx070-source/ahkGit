fxIsApp(app) {
    return WinActive("ahk_exe " app ".exe")
}
fxIsClass(class) {
    return WinActive("ahk_class " class)
}
fxIsTitle(title) {
    return InStr(WinGetTitle("A"), title)
}
