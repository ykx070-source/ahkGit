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
    fxHnkX2EdgeBookmark(2)
}
!2:: {
    fxHnkX2EdgeBookmark(4)
}
!3:: {
    fxHnkX2EdgeBookmark(6)
}
