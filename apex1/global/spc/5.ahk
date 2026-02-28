sc39 & sc1D:: {
    global penMode
    if penMode {
        send("^+{l}")
    }
    else {
        send("{enter}")
    }
}
sc39 & LWin:: {
    send("{F12}")
}
sc39 & sc38:: {
    send("{F11}")
}
sc39 & sc7B:: {
    send("{F2}")
}

sc39 & sc79:: {
}
