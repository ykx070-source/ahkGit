XButton1 & WheelUp:: {
  send("{Volume_Up}")
}
XButton1 & WheelDown:: {
  send("{Volume_Down}")
}
XButton1 & XButton2:: {
  if (A_ComputerName = "s") {
    Sleep(1000)
    SendMessage(0x112, 0xF170, 2, , "Program Manager")
  } else {
    fxSleep()
  }

}
