hankakuAloneHot() {
    global hotBoo
    hotBoo := false
    myGu.Destroy
}
sc29:: hankakuAloneHot()
vkF4:: hankakuAloneHot()
1:: {
    global hotBoo
    hotBoo := false
    myGu.Destroy
    send_text("日本語などマルチ")
}
2:: {
    myGu.Destroy
    send_text("日本語など")
}
3:: {
    send("{8}")
}
4:: {
    send("{9}")
}
5:: {
}
