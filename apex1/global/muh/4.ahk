sc7B & sc2A:: {
    send("{tab}")
}
sc7B & z:: {
    send("#{5}")
    ; send("^{enter}")
}
sc7B & x:: {
    send("#{6}")
}
sc7B & c:: {
    send("#{7}")
    ; WinActivate("ahk_exe ScreenPaint.exe")
    ; Sleep(100)
    ; send("^+{l}")
}
sc7B & v:: {
    send("#{8}")
}
sc7B & b:: {
    Run A_AhkPath "\..\WindowSpy.ahk"
}

sc7B & n:: {
}
sc7B & m:: {
    send("+{home}")
}
sc7B & sc33:: {
    send("+{left}")
}
sc7B & sc34:: {
    send("+{right}")
}
sc7B & sc35:: {
    send("+{end}")
}
