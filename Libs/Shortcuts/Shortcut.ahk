; 引用貼付け
!v::
{
  ; 現在のクリップボードの値を退避
  ClipSaved := ClipboardAll()
  ; 各行頭に "> " を付加
  A_Clipboard := RegExReplace(A_Clipboard, "(.+)", "> $1")
  Send("^v")
  Sleep(50)
  A_Clipboard := ClipSaved
}