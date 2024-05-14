; ローマ字→日本語変換

ConvertToJa() {
  ClipSaved := ClipboardAll()
  c := ""
  e := 0
  while (c != A_Clipboard or c == "") {
    c := A_Clipboard
    Send("+{Left}")
    A_Clipboard := ""
    Send("^{c}")
    ClipWait(1)
    sl := StrLen(A_Clipboard)
    if (sl == 0) {
      e := 1
      break
    } else if (RegExMatch(SubStr(A_Clipboard, 1, 1), "[\-\~]")) {
      Send("^{Left}")
    } else if (RegExMatch(A_Clipboard, "[^0-9a-zA-Z\-\~]")) {
      if (sl == 1 or (sl == 2 and RegExMatch(A_Clipboard, "[\r\n]"))) {
        e := 1
        Send("{Right}")
      } else {
        Send("+{Right}")
        Send("^{c}")
        ClipWait(1)
      }
      break
    } else {
      Send("+{Right}+^{Left}")
    }
    A_Clipboard := ""
    Send("^{c}")
    ClipWait(1)
  }
  if (e == 0) {
    IME_SET(1)
    words := A_Clipboard
    words := StrReplace(words, A_Space, "")
    words := StrReplace(words, "`r`n", "")
    words := StrReplace(words, "`n", "")
    Send(words)
  }
  A_Clipboard := ClipSaved
  ClipSaved := ""
  return
}