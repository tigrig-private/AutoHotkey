; 数値関連操作

; Ctrl + . で : に
^NumpadDot:: Send("{:}")

; Ctrl + 0 で , に
^Numpad0:: Send("{,}")

; 文字消去
^Numpad7:: BackSpace
^Numpad9:: Delete

; タスクスイッチ（Win+数字）を Numpad で実現
!Numpad0:: 0
!Numpad1:: 1
!Numpad2:: 2
!Numpad3:: 3
!Numpad4:: 4
!Numpad5:: 5
!Numpad6:: 6
!Numpad7:: 7
!Numpad8:: 8
!Numpad9:: 9