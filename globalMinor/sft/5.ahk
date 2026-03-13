LShift & sc38:: {
  guiIme.Destroy()
}
LShift & space:: {
  fxImeOff()
  Reload()
}
#SuspendExempt
LShift & sc7B:: {
  global manualSuspend
  manualSuspend := !manualSuspend
  UpdateSuspend()
}
#SuspendExempt false