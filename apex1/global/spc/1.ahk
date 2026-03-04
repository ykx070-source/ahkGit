hankakuSpc() {
    send("!{f4}")
}
sc39 & sc29:: hankakuSpc()
sc39 & vkF4:: hankakuSpc()

sc39 & 1:: {
    send("{6}")
}
sc39 & 2:: {
    send("{7}")
}
sc39 & 3:: {
    send("{8}")
}
sc39 & 4:: {
    send("{9}")
}
sc39 & 5:: {
    targetClass := "wndclass_desked_gsk"
    targetExe := "POWERPNT.exe"

    ; ウィンドウが存在するか確認
    hWnd := WinExist("ahk_class " targetClass)

    if hWnd  ; ウィンドウが存在すれば
    {
        WinActivate("ahk_id " . hWnd)   ; ここを修正
        ; WinRestore("ahk_id " . hWnd)
    }
    else      ; なければ起動
    {
        Run targetExe
        WinWait("ahk_class " . targetClass)
        WinActivate("ahk_class " . targetClass)
    }
}
