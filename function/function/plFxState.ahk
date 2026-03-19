fxSleep() {
  DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
}
fxHibernate() {
  DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
}
fxShutdown() {
  Shutdown 1
}
fxRestart() {
  Shutdown 2
}
fxScreenOff() {
  Sleep(1000),
  SendMessage(0x112, 0xF170, 2, , "Program Manager")
}
