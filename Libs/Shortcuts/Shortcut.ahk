; 引用貼付け
!v::
{
  ; 現在のクリップボードの値を退避
  ClipSaved := ClipboardAll()

  ; 各行の先頭に "> " を追加（空行含む、空白保持）
  modified := ""
  for line in StrSplit(A_Clipboard, "`n", "`r") {
    modified .= "> " line "`r`n"
  }

  ; 改変されたテキストをクリップボードにセット
  A_Clipboard := SubStr(modified, 1, -2) ; 最後の改行除去

  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}