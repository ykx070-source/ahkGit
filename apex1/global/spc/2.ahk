sc39 & sc0F:: {
    send("{" codeObj["hankaku"] "}")
}
sc39 & q:: {
    send("#{4}")
}
sc39 & w:: {
    send("#{3}")
}
sc39 & e:: {
    send("#{2}")
}
sc39 & r:: {
    targetClass := "PPTFrameClass"
    targetExe := "POWERPNT.exe"

    hWnd := WinExist("ahk_class " targetClass)

    if hWnd {
        WinActivate("ahk_id " . hWnd)
        ; WinRestore("ahk_id " . hWnd)
        ; WinMaximize("ahk_id " . hWnd)  ; ← ここで最大化
    }
    else {
        Run targetExe
        ; 起動してウィンドウができるまで待機
        WinWait("ahk_class " . targetClass)
        hWnd := WinExist("ahk_class " . targetClass)
        ; WinMaximize("ahk_id " . hWnd)  ; ← 最大化
        WinActivate("ahk_id " . hWnd)
    }
    ; send("#{1}")
}
sc39 & t:: {
    send("{0}")
}

sc39 & y:: {
    send("+{Home}")
}
sc39 & u:: {
}
sc39 & i:: {
    send("+{Left}")
}
sc39 & o:: {
    send("+{Right}")
}
sc39 & p:: {
    send("^+{Right}")
}
sc39 & sc1A:: {
    send("+{End}")
}
