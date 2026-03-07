isApp(app) {
    return WinActive("ahk_exe " app ".exe")
}
isClass(class) {
    return WinActive("ahk_class " class)
}
isTitle(title) {
    return InStr(WinGetTitle("A"), title)
}
