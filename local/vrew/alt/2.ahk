!tab:: {
  loop 3 {
    send("{Left}")
  }
  sleep(100)
  send("{Space}")
  sleep(100)
}
!q:: {
  fxMoveEdgeBookmark(3)
}
!w:: {
  fxMoveEdgeBookmark(5)
}
!e:: {
  fxMoveEdgeBookmark(7)
}
