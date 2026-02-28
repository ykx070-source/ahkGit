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
    edge_bookmark(2)
}
!2:: {
    edge_bookmark(4)
}
!3:: {
    edge_bookmark(6)
}
