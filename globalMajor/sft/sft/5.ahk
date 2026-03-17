Shift & LAlt:: {
}
Shift & sc7B:: {
  guiImeHorizontal.Destroy()
  guiImeVertical.Destroy()
}
#SuspendExempt
Shift & space:: {
  global manualSuspend
  manualSuspend := !manualSuspend
}
#SuspendExempt false