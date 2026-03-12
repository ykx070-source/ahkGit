+sc38:: {
  guiIme.Destroy()
}
+space:: {
  fxImeOff()
  Reload()
}
#SuspendExempt
+sc7B:: {
  global manualSuspend
  manualSuspend := !manualSuspend
  UpdateSuspend()
}
#SuspendExempt false