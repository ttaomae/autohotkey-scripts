; prevent caps lock from toggling when used with other keys
; this slightly changes the behavior of caps lock
CapsLock::
  KeyWait, CapsLock
  If (A_PriorKey="CapsLock")
    SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
  Return
