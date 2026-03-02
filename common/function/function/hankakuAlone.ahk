global myGu := 0
global hotBoo := false
global procName := ""
global objs := []
appIds := ["Code", "msedge", "POWERPNT"]
nous := ["1", "2", "3", "a"]

for index, nou in nous {
    m := Map()
    for appId in appIds {
        funcName := appId nou
        if IsSet(%funcName%) {
            m[appId] := %funcName%
        } else {
            m[appId] := (*) => 0
        }
    }
    objs.Push(m)
}
for index, nou in nous {
    Hotkey(codeObj[nou], MakeHotkey(index), "Off")
}

MakeHotkey(index) {
    global objs
    return (*) => handleProcess(objs[index])
}
handleProcess(exeMap) {
    global hotBoo, nous
    procName := WinGetProcessName("A")
    procName := StrReplace(procName, ".exe")  ; ← 追加
    hotBoo := false
    if exeMap.Has(procName) {
        exeMap[procName]()
    }
    for nou in nous
        Hotkey(codeObj[nou], "Off")
}

hankakuAlone() {
    global hotBoo, nous

    if (hotBoo) {
        for nou in nous
            Hotkey(codeObj[nou], "Off")
    } else {
        for nou in nous
            Hotkey(codeObj[nou], "On")
    }
    hotBoo := !hotBoo
}
