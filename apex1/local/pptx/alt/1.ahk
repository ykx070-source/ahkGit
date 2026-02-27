altHankaku() {
    run "C:\Users\yl228\Documents\fix\pen.lnk"
    ; WinActivate("ahk_exe ScreenPaint.exe")
    Sleep(100)
    send("^+{l}")
}

!sc29:: altHankaku()
!vk19:: altHankaku()
!1:: {
    send("+!{o}") ;タスク
}
!2:: {
    send("+!{y}") ;favorite
}
