for nou in nous {
    for adjective in adjectives {
        adjNou := keyAlias[adjective] nou
        if (adjective = "none") {
            Hotkey(codeObj[nou], fxAcMedia(adjNou), "Off")
        } else {
            Hotkey(codeObj[adjective] " & " codeObj[nou], fxAcMedia(adjNou), "Off")
        }
    }
}
fxAcMedia(adjnou) => (*) => fxAc(adjNouObjObj[adjnou])
fxAc(appIdFxObj) {
    global booHkk
    rowAppId := WinGetProcessName("A")
    appId := StrReplace(rowAppId, ".exe")  ; ← 追加
    booHkk := false
    if appIdFxObj.Has(appId) {
        appIdFxObj[appId]()
    }
    for nou in nous {
        for adjective in adjectives {
            if (adjective = "none") {
                Hotkey(codeObj[nou], "Off")
            } else {
                Hotkey(codeObj[adjective] " & " codeObj[nou], "Off")
            }
        }
    }
}
