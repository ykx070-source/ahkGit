!tab:: {
    loop 3 {
        send("{Left}")
    }
    sleep(100)
    send("{Space}")
    sleep(100)
}
!q:: {
    fxEdgeBookmark(3)
}
!w:: {
    fxEdgeBookmark(5)
}
!e:: {
    fxEdgeBookmark(7)
}
