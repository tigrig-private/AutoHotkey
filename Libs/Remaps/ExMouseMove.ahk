F15 & I::
F15 & J::
F15 & K::
F15 & L:: {
  While (GetKeyState("F15", "P"))
  {
    MoveX := 0, MoveY := 0
    MoveY += GetKeyState("I", "P") ? -8 : 0
    MoveX += GetKeyState("J", "P") ? -8 : 0
    MoveY += GetKeyState("K", "P") ? 8 : 0
    MoveX += GetKeyState("L", "P") ? 8 : 0
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

F15 & F:: Click