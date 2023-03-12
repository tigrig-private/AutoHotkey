; Explorer

#HotIf WinActive("ahk_exe Explorer.EXE", )

; Code で開く（ディレクトリ）
F20 & c::
{
  Send("{AppsKey}")
  Send("{C}")
  Return
}

#HotIf