fxAltHankakuExplorer() {
  {
    for window in ComObject("Shell.Application").Windows {
      try
      {
        if window.HWND = WinActive("A") {
          window.Navigate("shell:Downloads")
          return
        }
      }
    }
  }
}
!sc29:: fxAltHankakuExplorer()
!vk19:: fxAltHankakuExplorer()
!1:: {
  fxMoveEdgeBookmark(2)
}
!2:: {
  fxMoveEdgeBookmark(4)
}
!3:: {
  fxMoveEdgeBookmark(6)
}
