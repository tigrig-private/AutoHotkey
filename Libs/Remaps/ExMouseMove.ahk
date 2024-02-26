; 変換 + WASD = マウスカーソル上, 左, 下, 右
; そのままだと細かい操作には向くが大きな移動には遅すぎる
; カーソル操作中にCtrlキーを一瞬押すといい感じにブーストできる
; CtrlとShiftでの加速減速はWindowsのマウスキー機能を踏襲
; 精密操作がしたい時は 変換+Shift+WASD でカーソルをゆっくり動かせる
AppsKey & W::
AppsKey & A::
AppsKey & S::
AppsKey & D:: {
  While (GetKeyState("AppsKey", "P"))                 ; 変換キーが押され続けている間マウス移動の処理をループさせる
  {
    MoveX := 0, MoveY := 0
    MoveY += GetKeyState("W", "P") ? -10 : 0     ; 変換キーと一緒にIJKLが押されている間はカーソル座標を変化させ続ける
    MoveX += GetKeyState("A", "P") ? -10 : 0
    MoveY += GetKeyState("S", "P") ? 10 : 0
    MoveX += GetKeyState("D", "P") ? 10 : 0
    MoveX *= GetKeyState("Ctrl", "P") ? 10 : 1   ; Ctrlキーが押されている間は座標を10倍にし続ける(スピードアップ)
    MoveY *= GetKeyState("Ctrl", "P") ? 10 : 1
    MoveX *= GetKeyState("Shift", "P") ? 0.3 : 1 ; Shiftキーが押されている間は座標を30%にする（スピードダウン）
    MoveY *= GetKeyState("Shift", "P") ? 0.3 : 1
    MouseMove(MoveX, MoveY, 1, "R")            ; マウスカーソルを移動する
    Sleep(10)                                     ; 負荷が高い場合は設定を変更 設定できる値は-1、0、10～m秒 詳細はSleep
  }
  Return
}