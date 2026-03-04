codeObj := Map()
#Include .\scancode\0.ahk
#Include .\scancode\1.ahk
#Include .\scancode\2.ahk
#Include .\scancode\3.ahk
#Include .\scancode\4.ahk
#Include .\scancode\5.ahk

keyAlias := Map(
    "none", "none",
    "space", "spc",
    "muhenkan", "mhk"
)

nous := [
    "esc", "f1", "f2", "f3", "f4",
    ; "hankaku",
    "1", "2", "3", "4", "5",
    ; "tab",
    "q", "w", "e", "r", "t",
    "capslock", "a", "s", "d",
    ; "f",
    "g",
    ; "lShift",
    "z", "x", "c", "v", "b",
    ; "lCtrl", "lWin", "lAlt",
    ; "muhenkan", "space",
    ; "henkan", "kana", "rAlt", "rCtrl", "app",
]