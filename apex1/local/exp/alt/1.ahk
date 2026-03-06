hankakuAltExp() {
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
!sc29:: hankakuAltExp()  ;dHankaku
!vk19:: hankakuAltExp() ;sHankakuAlt
!1:: {
    fxEdgeBookmark(2)
}
!2:: {
    fxEdgeBookmark(4)
}
!3:: {
    fxEdgeBookmark(6)
}
