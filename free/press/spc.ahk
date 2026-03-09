global lastUpTimeSpc := 0
global isDownSpc := false
global isCompletedSpc := false
fxSpcUsed() {
  global isCompletedSpc
  isCompletedSpc := true
}
$space:: {
  global isDownSpc, isCompletedSpc
  if isDownSpc
    return

  isDownSpc := true
  isCompletedSpc := false
}

$space Up:: {
  global isDownSpc, isCompletedSpc
  global lastUpTimeSpc
  isDownSpc := false
  if isCompletedSpc {
    return
  }
  now := A_TickCount
  if (now - lastUpTimeSpc < 333) {
    SendInput("{" scTab "}")
  }
  lastUpTimeSpc := now
}
