; 特殊キーバインディング

; AppsKey で特殊キーバインドモード ON
ExKeybindMode := false
AppsKey:: {
  global ExKeybindMode := !ExKeybindMode
}

; 特殊キーバインド
; ※Ctrl, Alt を押している場合は無効化
#HotIf ExKeybindMode && !GetKeyState("Ctrl", "P") && !GetKeyState("Alt", "P")

i:: Up
j:: Left
k:: Down
l:: Right
m:: Home
.:: End
y:: PgUp
h:: PgDn
u:: BackSpace
o:: Delete
vkBB:: Enter ;セミコロン
q:: Esc

#HotIf