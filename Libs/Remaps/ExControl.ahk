; コントロール系のキー
; - Arrow
; - Enter, Del, BackSpace
; - Home, End, PgDn, PgUp
; - ESC

; vk1C ( 変換キー ) を使った操作
vk1C & i:: Up
vk1C & j:: Left
vk1C & k:: Down
vk1C & l:: Right
vk1C & m:: Home
vk1C & .:: End
vk1C & y:: PgUp
vk1C & h:: PgDn
vk1C & u:: BackSpace
vk1C & o:: Delete
vk1C & vkBB:: Enter ;セミコロン
vk1C & q:: Esc

; F20 ( マウス親指ボタン ) を使った操作
F20 & w:: Up
F20 & a:: Left
F20 & s:: Down
F20 & d:: Right
F20 & q:: Esc

; マウスのみでの操作
; ( BackSpace と Delete は人差し指ボタン )
F20 & BackSpace:: PgUp
F20 & Delete:: PgDn
F20 & WheelUp:: Up
F20 & WheelDown:: Down
F20 & LButton:: Left
F20 & RButton:: Right