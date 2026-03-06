; global hkkAppIdObjObj := Map()
; appIds := ["global", "Code", "msedge", "POWERPNT"]
; adjectives := ["none", "space", "muhenkan",]
; worlds := ["normal", "hkk",]

; keyAlias := Map(
;     "none", "none",
;     "space", "spc",
;     "muhenkan", "mhk"
; )
; nous := [
;     "esc", "f1", "f2", "f3", "f4",
;     "1", "2", "3", "4", "5",
;     "tab",
;     "q", "w", "e", "r", "t",
;     "capslock", "a", "s", "d", "f", "g",
;     ; "lShift",
;     "z", "x", "c", "v", "b",
;     ; "lCtrl",
;     ; "lWin",
;     ; "lAlt",
;     ; "muhenkan",
;     "space",
; ]
; for nou in nous {
;     for adjective in adjectives {
;         adjNou := keyAlias[adjective] nou
;         for appId in appIds {
;             fxId := "hkk" appId adjNou
;             if IsSet(%fxId%) {
;                 if !hkkAppIdObjObj.Has(appId)
;                     hkkAppIdObjObj[appId] := Map()

;                 hkkAppIdObjObj[appId][adjNou] := %fxId%
;             }
;         }
;     }
; }
; global normalAppIdObjObj := Map()
; for nou in nous {
;     for world in worlds {
;         for adjective in adjectives {
;             adjNou := keyAlias[adjective] nou
;             for appId in appIds {
;                 fxId := world appId adjNou
;                 if IsSet(%fxId%) {
;                     if !normalAppIdObjObj.Has(appId)
;                         normalAppIdObjObj[appId] := Map()
;                     normalAppIdObjObj[appId][adjNou] := %fxId%
;                 }
;             }
;         }
;     }
; }
