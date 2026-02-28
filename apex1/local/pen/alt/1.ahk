hankakuAltPen() {
    send("^+{d}") ;desktop
    send("!{esc}")
    ; send("^+{a}")
}

!sc29:: hankakuAltPen()  ;dHankaku
!vk19:: hankakuAltPen() ;sHankakuAlt
!1:: {
    send("^+{d}") ;desktop
}
!2:: {
    send("+!{y}") ;favorite
}
