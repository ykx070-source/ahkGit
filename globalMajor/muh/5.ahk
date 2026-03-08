sc7B & LCtrl:: {
    fxPenMode(
        (*) => (send("^+{Delete}"), send("^+{d}")),
        (*) => send("{delete}")
    )
}
sc7B & LWin:: {
}
sc7B & sc38:: {
}
sc7B & sc39:: {
    KeyHistory
}

sc7B & sc79:: { ;katakana
    send("{F7}")
    sleep(100)
    send("{Enter}")
    sleep(10)
}
