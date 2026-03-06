#HotIf booHkk && WinActive("ahk_exe Code.exe")
$1:: {
    global booHkk
    booHkk := false
    send("{j}")
}
sc39 & 1:: {
    global booHkk
    booHkk := false
    send("{p}")
}
#HotIf booHkk && WinActive("ahk_exe msedge.exe")
1:: {
    global booHkk
    booHkk := false
    send("{d}")
}
sc39 & 1:: {
    global booHkk
    booHkk := false
    send("{f}")
}
#HotIf booHkk
$1:: {
    global booHkk
    booHkk := false
    send("{t}")
}
sc39 & 1:: {
    global booHkk
    booHkk := false
    send("{y}")
}

#HotIf

$sc0F:: send("{" codeObj["backspace"] "}") ;tab
sc39 & sc0F:: {
    send("{" codeObj["hankaku"] "}")
}

; fxHotkey(mapObj, isHkk, mode) {
;     rowAppId := WinGetProcessName("A")
;     appId := StrReplace(rowAppId, ".exe")
;     for nou in nous
;         for adjective in adjectives {
;             adjNou := keyAlias[adjective] nou
;             fxId := ""
;             if mapObj.Has(appId) && mapObj[appId].Has(adjNou)
;                 fxId := mapObj[appId][adjNou]
;             else if mapObj.Has("global") && mapObj["global"].Has(adjNou)
;                 fxId := mapObj["global"][adjNou]
;             if fxId
;                 Hotkey(getTg(adjective, nou), fxWrap(fxId, isHkk), mode)
;         }
; }
; fxWrap(fxId, isHkk) {
;     return (*) => (
;         fxId(),
;         isHkk ? (
;             fxHotkey(hkkAppIdObjObj, true, "Off"),
;             fxHotkey(normalAppIdObjObj, false, "On"),
;             booHkk := false
;         ) : 0
;     )
; }

; getTg(adjective, nou) {
;     prefix := (adjective = "none") ? "" : codeObj[adjective] " & "
;     return prefix codeObj[nou]
; }
