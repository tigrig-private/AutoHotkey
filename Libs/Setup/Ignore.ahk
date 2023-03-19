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

; F1 無効化
; → ミスタイプでヘルプ出るとうるさいので
F1:: Return