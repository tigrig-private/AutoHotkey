; 各種設定 ===========================================================================

; 常駐に指定
Persistent()

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

; リマップ ===========================================================================
#Include Libs/Remaps/Developer.ahk
#Include Libs/Remaps/ExControl.ahk
#Include Libs/Remaps/ExNumpad.ahk

; ホットストリング ===========================================================================

; ホットキー ===========================================================================
#Include Libs/Hotkeys/Ahk.ahk
#Include Libs/Hotkeys/DateTime.ahk
#Include Libs/Hotkeys/ExecuteApps.ahk
#Include Libs/Hotkeys/Sound.ahk

; アプリケーションごとの設定 ===========================================================================
#Include Libs/IfWinActive/A5M2.ahk
#Include Libs/IfWinActive/Explorer.ahk
#Include Libs/IfWinActive/LineWorks.ahk
#Include Libs/IfWinActive/Notion.ahk
#Include Libs/IfWinActive/ObjectBrowser.ahk