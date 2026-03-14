XButton1 & WheelUp:: {
  send("{Volume_Up}")
}
XButton1 & WheelDown:: {
  send("{Volume_Down}")
}
MButton:: {
  fxMachine(
    (*) => fxSleep(),
    (*) =>
      (Sleep(1000),
      SendMessage(0x112, 0xF170, 2, , "Program Manager"))
  )
}
