XButton1 & tab:: {
    fxMoveTab()
}
XButton1 & q:: {
    Send("!jpayh") ;反転
}
XButton1 & w:: {
}
XButton1 & e:: {
    Send("!jnl") ;動画ループ
}
XButton1 & r:: {
    Send("!as")
    Send("{Enter}")

    Send("!as")
    Send("{Down}")
    Send("{Enter}")

    Send("{Escape}")
    Send("!at")
    Send("{Home}")
    Send("{Down}")
    Send("{Enter}")

    loop 10 {
        Send("!ae")
        Send("{Escape}")
    }

    Send("{Escape}")
    Send("!ade")
    Send("0.01")
    Send("{Enter}")

    Send("!a")
    Sleep(100)
    Send("{esc}")
    Send("{esc}")
}
XButton1 & t:: {
    send("!jpc") ;動画トリム
}
