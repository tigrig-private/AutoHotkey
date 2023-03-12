; キー無効化

; CapsLock は常に無効状態
SetCapsLockState("AlwaysOff")
CapsLock:: Return

; NumLock は常に有効状態
SetNumLockState("AlwaysOn")
NumLock:: Return

; Insert 無効化
; → ミスタイプでインサートモードになると面倒なので
Insert:: Return

; Insert 無効化
; → 特殊コントロール ( ./ExControl ) で使うため
vk1C:: Return ;変換キー

; F1 無効化
; → ミスタイプでヘルプ出るとうるさいので
F1:: Return

; F20 無効化
; → マウスの親指ボタンに当てて、特殊コントロール ( ./ExControl ) で
;   親指ボタン + WASD による ↑↓←→ を実現しているため
F20:: Return

; RAlt 無効化
; → 小指の付け根で AppsKey 押すときにミスタイプを防ぐため
RAlt:: Return