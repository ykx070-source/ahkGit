Shift & LAlt:: {
  guiIme.Destroy()
}
Shift & space:: {
}
#SuspendExempt
Shift & sc7B:: {
  global manualSuspend
  manualSuspend := !manualSuspend
  UpdateSuspend()
}
#SuspendExempt false