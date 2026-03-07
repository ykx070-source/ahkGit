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
    fxEdgeBookmark(3)
}
!w:: {
    fxEdgeBookmark(5)
}
!e:: {
    fxEdgeBookmark(7)
}
