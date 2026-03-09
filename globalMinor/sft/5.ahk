sc2A & sc38:: {
  global timerEnabled
  timerEnabled := !timerEnabled
  if (timerEnabled)
    SetTimer(guiIme, 100) ; タイマーを有効化
  else
    SetTimer(guiIme, 0)   ; タイマー無効化
  myGui.Destroy()
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