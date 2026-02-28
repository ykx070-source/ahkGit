fxPenMode(penFunc, normalFunc) {
    global penMode
    if (penMode)
        penFunc.Call()
    else
        normalFunc.Call()
}
