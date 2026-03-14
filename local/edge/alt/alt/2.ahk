Alt & tab:: {
  send("+!{n}") ;normalPip
}
Alt & q:: {
  send("+!{v}") ;allPip
}
Alt & w:: {
  Send("!d")
  Send("^a")
  Send("^c")
  Sleep 100

  input := A_Clipboard

  if RegExMatch(input, "list=([^&]+)", &m) {
    id := m[1]
    url := "https://www.youtube.com/playlist?list=" id
  }
  else if RegExMatch(input, "v=([^&]+)", &m) {
    id := m[1]
    url := "https://www.youtube.com/watch?v=" id
  }
  else {
    url := input
  }

  result := InputBox("アルバム名")
  if result.Result != "OK"
    return
  album := result.Value

  cmd :=
    'cmd /c cd /d "C:\Users\ykx07\Documents\george" && ' .
    'mkdir "' album '" && ' .
    'cd "' album '" && ' .
    'py -m yt_dlp --js-runtimes node -x ' .
    '--audio-format mp3 ' .
    '--audio-quality 0 ' .
    '--embed-metadata ' .
    '--postprocessor-args "-metadata album=' album '" ' .
    '"' url '"'

  Run(cmd)
}
Alt & e:: {
}
