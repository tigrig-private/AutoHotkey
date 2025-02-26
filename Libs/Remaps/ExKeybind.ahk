; 特殊キーバインディング
; - Arrow
; - Enter, Del, BackSpace
; - Home, End, PgDn, PgUp
; - ESC

; vk1C ( 変換キー ) を使った操作
#HotIf GetKeyState("vk1C", "P")
i::Up
j::Left
k::Down
l::Right
m::Home
.::End
y::PgUp
h::PgDn
u::BackSpace
o::Delete
z::Esc
; Space:: ConvertToJa()
#HotIf

; vk1D ( 無変換キー ) を使った操作: タイプミス多いキーの調整
#HotIf GetKeyState("vk1D", "P")
p::[
vkBB::]
,::-
.::^
h::@
/::vkE2 ;アンダーバーのキー
:::|
#HotIf