; Notion

#HotIf WinActive("ahk_exe ms-teams.exe",)

; 戻る
XButton1:: Send("!{Left}")
; 進む
XButton2:: Send("!{Right}")

#HotIf