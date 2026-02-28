sc39 & sc2A:: {
    send("{Esc}")
}
sc39 & z:: {
    fxPenMode(
        (*) => 0,
        (*) => send("^{z}")
    )
}
sc39 & x:: {
    fxPenMode(
        (*) => 0,
        (*) => send("^{x}")
    )
}
sc39 & c:: {
    fxPenMode(
        (*) => 0,
        (*) => send("^{c}")
    )
}
sc39 & v:: {
    fxPenMode(
        (*) => (send("^+{Delete}"), send("^+{d}")),
        (*) => send("^{v}")
    )
}
sc39 & b:: {
}

sc39 & n:: {
    send("{Up}")
}
sc39 & m:: {
    send("^{Home}")
}
sc39 & sc33:: {
    send("^{End}")
}
sc39 & sc34:: {
}
sc39 & sc35:: {
}
