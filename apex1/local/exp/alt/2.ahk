!sc0F:: {
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
    edge_bookmark(3)
}
!w:: {
    edge_bookmark(5)
}
!e:: {
    edge_bookmark(7)
}
