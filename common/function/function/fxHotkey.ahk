; #HotIf booHkk && WinActive("ahk_exe msedge.exe")
; #HotIf

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
