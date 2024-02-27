AppsKey & W::
AppsKey & A::
AppsKey & S::
AppsKey & D:: {
  ; 変換キーが押され続けている間マウス移動の処理をループさせる
  While (GetKeyState("AppsKey", "P"))
  {
    MoveX := 0, MoveY := 0
    MoveY += GetKeyState("W", "P") ? -8 : 0
    MoveX += GetKeyState("A", "P") ? -8 : 0
    MoveY += GetKeyState("S", "P") ? 8 : 0
    MoveX += GetKeyState("D", "P") ? 8 : 0
    ; Ctrlキーが押されている間スピードアップ
    MoveX *= GetKeyState("Ctrl", "P") ? 10 : 1
    MoveY *= GetKeyState("Ctrl", "P") ? 10 : 1
    ; Shiftキーが押されている間はスピードダウン）
    MoveX *= GetKeyState("Shift", "P") ? 0.3 : 1
    MoveY *= GetKeyState("Shift", "P") ? 0.3 : 1
    MouseMove(MoveX, MoveY, 1, "R")
    Sleep(10)
  }
  Return
}

AppsKey & F:: Click