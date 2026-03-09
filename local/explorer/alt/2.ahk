!tab:: {
  {
    for window in ComObject("Shell.Application").Windows {
      try {
        if window.HWND = WinActive("A") {
          window.Navigate(A_MyDocuments)
          return
        }
      }
    }
  }
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
