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
q::Esc
; Space:: ConvertToJa()
#HotIf

; F13 ( CapsLock ) を使った操作: タイプミス多いキーの調整
#HotIf GetKeyState("F13", "P")
h::@
/::vkE2 ;アンダーバーのキー
y::|
p::[
vkBB::] ; セミコロン
#HotIf

; - 苦手対応
0::-

; Enterがコンビネーションキーだと時々反応しないので対応
AppsKey::Enter