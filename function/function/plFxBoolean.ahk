global isText := false
global isWatch := false
global isPresen := false
global isZen := false
global isBracket := false
fxToggleMode(mode) {
  global isText, isWatch, isPresen, isZen, isBracket
  isText := (mode = "text") ? !isText : false
  isWatch := (mode = "watch") ? !isWatch : false
  isPresen := (mode = "presen") ? !isPresen : false
  isZen := (mode = "zen") ? !isZen : false
  isBracket := (mode = "bracket") ? !isBracket : false
}
fxFalseText() {
  fxToggleMode("text")
}
fxPresen(ac) {
  global isPresen
  loop 4 {
    Send("{esc}")
  }
  if !isPresen {
    Send(ac)
    send("^{p}")
    fxImeOff()
  }
  fxToggleMode("presen")
}
