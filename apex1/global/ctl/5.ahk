sc1D & sc7B:: {
    send("^+{" codeObj["tab"] "}")
}
sc1D & sc39:: {
    send("^{" codeObj["tab"] "}")
}

sc1D & sc79:: {
    send("{space}") ;basicInput
    sleep(200)
    send("{space}")
    sleep(200)
    send("{home}")
}
