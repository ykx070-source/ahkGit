hankakuAloneHot() {
    global hotBoo
    hotBoo := false
    myGu.Destroy
}
sc29:: hankakuAloneHot()
vkF4:: hankakuAloneHot()

; --- ホットキー ---
; Code1() {
;     send_text("はい")
; }
; msedge1() {
;     send("#{a}")
; }
; code2() {
;     send_text("に")
; }
; msedge2() {
;     send("^{a}")
; }
; --- 例の関数 ---

; 1:: {
;     global hotBoo, procName
;     hotBoo := false
;     myGu.Destroy
;     if (procName = "code.exe") {
;         Code1()
;         return
;     }
;     if (procName = "msedge.exe") {
;         msedge1()
;         return
;     }
; }

; 2:: {
;     global hotBoo, procName
;     hotBoo := false
;     myGu.Destroy
;     if (procName = "code.exe") {
;         code2()
;         return
;     }
;     if (procName = "msedge.exe") {
;         msedge2()
;         return
;     }
; }
4:: {
    global hotBoo
    hotBoo := false
    myGu.Destroy
    send_text("わかりやすく教えて")
}
5:: {
}
