global isText := false
global isWatch := false
global isPresen := false
fxFalseText() {
  global isText
  isText := false
}
fxFalseWatch() {
  global isWatch
  isWatch := false
}
fxFalsePresen() {
  global isPresen
  isPresen := false
}

fxToggleMode(mode) {
  global isText, isWatch, isPresen
  isText := (mode = "text") ? !isText : false
  isWatch := (mode = "watch") ? !isWatch : false
  isPresen := (mode = "presen") ? !isPresen : false
}
