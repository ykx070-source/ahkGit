space & sc3A:: {
  fxPenMode(
    (*) => send("^+{d}"),
    (*) => (Send("{F10}"), Sleep(100), Send("{Enter}"))
  )
}
space & a:: {
  fxPenMode(
    (*) => Send("^+{a}"),
    (*) => Send("^{a}")
  )
}
space & s:: {
  fxPenMode(
    (*) => send("^+{l}"),
    (*) => Send("^{s}")
  )
}
space & d:: {
  fxPenMode(
    (*) => send("^+{r}"),
    (*) => Send("^{d}")
  )
}
space & f::AltTab
space & g:: {
  send("^{y}")
}

space & h:: {
  send("{Home}")
}
space & j:: {
  send("^{Left}")
}
space & k:: {
  send("{Left}")
}
space & l:: {
  send("{Right}")
}
space & sc27:: {
  send("^{Right}")
}
space & sc28:: {
  send("{End}")
}
