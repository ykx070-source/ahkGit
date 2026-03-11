sc2A & sc38:: {
  guiIme.Destroy()
}
sc2A & space:: {
  h1 := DllCall("LoadCursor", "ptr", 0, "ptr", 32513, "ptr") ; on text cross
  DllCall("SetSystemCursor", "ptr", h1, "uint", 32515) ; off text
  fxImeOff()
  Reload()
}
#SuspendExempt
sc2A & sc7B:: {
  global manualSuspend
  manualSuspend := !manualSuspend
  UpdateSuspend()
}
#SuspendExempt false