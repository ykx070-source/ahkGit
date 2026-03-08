fxSleep() {
  DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
}
fxShutdown() {
  Shutdown 1
}
fxRestart() {
  Shutdown 2
}
