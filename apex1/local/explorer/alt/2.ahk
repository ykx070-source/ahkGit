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
    fxHnkX2EdgeBookmark(3)
}
!w:: {
    fxHnkX2EdgeBookmark(5)
}
!e:: {
    fxHnkX2EdgeBookmark(7)
}
