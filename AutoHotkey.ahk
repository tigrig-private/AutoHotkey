; 各種設定 ===========================================================================

; 多重起動不可
#SingleInstance Force

; https://ahkwiki.net/-InstallKeybdHook
InstallKeybdHook()
; https://ahkwiki.net/-InstallMouseHook
InstallMouseHook()

; https://ahkwiki.net/-HotkeyInterval
A_HotkeyInterval := 2000
; https://ahkwiki.net/-MaxHotkeysPerInterval
A_MaxHotkeysPerInterval := 200

; プロセス優先度
ProcessSetPriority("Realtime")

; 1 = A window's title must start with the specified WinTitle to be a match.
; 2 = A window's title can contain WinTitle anywhere inside it to be a match.
; 3 = A window's title must exactly match WinTitle to be a match.
SetTitleMatchMode(2)

; 補足コメント ===========================================================================

; [Ctrlキー]	^
; [Shiftキー]	+
; [Altキー]	!
; [Winキー]	#

;※半角/全角 -> ChgKey で変えている
;※CapsLock -> ChgKey で RWin に変えている

; セットアップ ===========================================================================
#Include Libs/Setup/Ignore.ahk
#Include Libs/Setup/ModifierKeys.ahk

; リマップ ===========================================================================
#Include Libs/Remaps/Developer.ahk
#Include Libs/Remaps/ExFunctionKey.ahk
#Include Libs/Remaps/ExKeybind.ahk
#Include Libs/Remaps/ExKeybindMouse.ahk
#Include Libs/Remaps/ExMouseMove.ahk
#Include Libs/Remaps/ExNumpad.ahk

; ホットストリング ===========================================================================
#Include Libs/Hotstrings/Mail.ahk

; ホットキー ===========================================================================
#Include Libs/Hotkeys/Ahk.ahk
#Include Libs/Hotkeys/DateTime.ahk
#Include Libs/Hotkeys/ExecuteApps.ahk
#Include Libs/Hotkeys/Sound.ahk
#Include Libs/Hotkeys/IME.ahk
#Include Libs/Hotkeys/ConvertToJa.ahk

; アプリケーションごとの設定 ===========================================================================
#Include Libs/IfWinActive/Excel.ahk
#Include Libs/IfWinActive/Explorer.ahk
#Include Libs/IfWinActive/Notion.ahk