sc39 & sc3A:: {
    fxPenMode(
        (*) => send("^+{d}"),
        (*) => (Send("{F10}"), Sleep(100), Send("{Enter}"))
    )
}
sc39 & a:: {
    fxPenMode(
        (*) => Send("^+{a}"),
        (*) => Send("^{a}")
    )
}

sc39 & s:: {
    fxPenMode(
        (*) => send("^+{l}"),
        (*) => Send("^{s}")
    )
}
sc39 & d:: {
    fxPenMode(
        (*) => send("^+{r}"),
        (*) => Send("^{d}")
    )
}
sc39 & sc21::AltTab
sc39 & g:: {
    send("^{y}")
}

sc39 & h:: {
    send("{Home}")
}
sc39 & j:: {
    send("^{Left}")
}
sc39 & k:: {
    send("{Left}")
}
sc39 & l:: {
    send("{Right}")
}
sc39 & sc27:: {
    send("^{Right}")
}
sc39 & sc28:: {
    send("{End}")
}
