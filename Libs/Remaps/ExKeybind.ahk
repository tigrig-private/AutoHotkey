; 特殊キーバインディング
; - Arrow
; - Enter, Del, BackSpace
; - Home, End, PgDn, PgUp
; - ESC

; vk1C ( 変換キー ) を使った操作
#HotIf GetKeyState("vk1C", "P")
h::Left
j::Down
k::Up
l::Right
m::Home
.::End
y::PgUp
i::PgDn
u::BackSpace
o::Delete
4::Esc
; Space:: ConvertToJa()
#HotIf

; タイプミス多いキーの調整
#HotIf GetKeyState("vk1C", "P")
,::@
/::\
8::|
p::[
vkBB::] ; セミコロン
vkBA::^ ; コロン
#HotIf

; Enterがコンビネーションキーだと時々反応しないので対応
AppsKey::Enter