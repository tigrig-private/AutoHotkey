; Notion

#HotIf WinActive("ahk_exe Notion.exe", )

; 戻る
XButton1:: Send("^{vkDB}")
; 進む
XButton2:: Send("^{vkDD}")

#HotIf