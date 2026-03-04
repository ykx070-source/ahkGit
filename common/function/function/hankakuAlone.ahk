global booHkk := false
global adjNouObjObj := Map()
appIds := ["Code", "msedge", "POWERPNT"]
; nous := ["1", "a", "space", "capslock",]
adjectives := ["none", "space", "muhenkan",]
for nou in nous {
    for adjective in adjectives {
        adjNou := keyAlias[adjective] nou
        appIdFxObj := Map()
        for appId in appIds {
            funcId := appId adjNou
            if IsSet(%funcId%)
                appIdFxObj[appId] := %funcId%
            else
                appIdFxObj[appId] := (*) => 0
        }
        adjNouObjObj[adjNou] := appIdFxObj
    }
}
hankakuAlone() {
    global booHkk
    if (booHkk) {
        for nou in nous
            for adjective in adjectives {
                if (adjective = "none") {
                    Hotkey(codeObj[nou], "Off")
                } else {
                    Hotkey(codeObj[adjective] " & " codeObj[nou], "Off")
                }
            }
    } else {
        for nou in nous
            for adjective in adjectives {
                if (adjective = "none") {
                    Hotkey(codeObj[nou], "On")
                } else {
                    Hotkey(codeObj[adjective] " & " codeObj[nou], "On")
                }
            }
    }
    booHkk := !booHkk
}
