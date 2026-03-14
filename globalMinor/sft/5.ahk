Shift & LAlt:: {
}
Shift & sc7B:: {
  guiImeHorizontal.Destroy()
}
#SuspendExempt
Shift & space:: {
  global manualSuspend
  manualSuspend := !manualSuspend
  UpdateSuspend()
}
#SuspendExempt false