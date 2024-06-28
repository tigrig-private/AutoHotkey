; 特殊キーバインディング
; - Arrow
; - Enter, Del, BackSpace
; - Home, End, PgDn, PgUp
; - ESC

; vk1C ( 変換キー ) を使った操作
#HotIf GetKeyState("vk1C", "P")
i:: {
  If (GetKeyState("F13", "P")) {
    Send("{Up}{Up}")
    Return
  }
  Send("{Up}")
}
j:: {
  If (GetKeyState("F13", "P")) {
    Send("{Left}{Left}")
    Return
  }
  Send("{Left}")
}
k:: {
  If (GetKeyState("F13", "P")) {
    Send("{Down}{Down}")
    Return
  }
  Send("{Down}")
}
l:: {
  If (GetKeyState("F13", "P")) {
    Send("{Right}{Right}")
    Return
  }
  Send("{Right}")
}
m::Home
.::End
y::PgUp
h::PgDn
u::BackSpace
o::Delete
vkBB::Enter ;セミコロン
z::Esc
; Space:: ConvertToJa()
#HotIf