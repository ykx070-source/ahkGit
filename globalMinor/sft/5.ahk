Shift & LAlt:: {
}
Shift & sc7B:: {
  guiIme.Destroy()
}
#SuspendExempt
Shift & space:: {
  global manualSuspend
  manualSuspend := !manualSuspend
  UpdateSuspend()
}
#SuspendExempt false