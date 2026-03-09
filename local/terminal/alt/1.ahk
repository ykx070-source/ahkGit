!sc29:: fxAltHankakuTerminal()
!vk19:: fxAltHankakuTerminal()
fxAltHankakuTerminal() {

  ; フォルダ名
  result := InputBox("フォルダ名", "")
  if result.Result != "OK"
    return
  folder := result.Value

  ; playlist ID
  result := InputBox("playlist ID", "")
  if result.Result != "OK"
    return
  listId := result.Value

  ; アーティスト
  result := InputBox("アーティスト", "")
  if result.Result != "OK"
    return
  artist := result.Value

  ; アルバム
  result := InputBox("アルバム", "")
  if result.Result != "OK"
    return
  album := result.Value

  cmd :=
    'cd "C:\Users\ykx07\Documents\george"; ' .
    'mkdir "' folder '"; ' .
    'cd "' folder '"; ' .
    'py -m yt_dlp --js-runtimes node --yes-playlist -x ' .
    '--audio-format mp3 --audio-quality 0 ' .
    '--embed-metadata ' .
    '--parse-metadata "artist:' artist '" ' .
    '--parse-metadata "album:' album '" ' .
    '"https://www.youtube.com/playlist?list=' listId '"'

  Run('powershell -NoExit -Command "' cmd '"')
}
!1:: {
}
!2:: {
  fxMoveEdgeBookmark(4)
}
!3:: {
  fxMoveEdgeBookmark(6)
}
