sc2A & sc38:: {
    guiIme.Destroy()
}
sc2A & space:: {
    Reload()
}
#SuspendExempt
sc2A & sc7B:: {
    global manualSuspend
    manualSuspend := !manualSuspend
    UpdateSuspend()
}
#SuspendExempt false