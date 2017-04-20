; Do not toggle CapsLock until key is released (normally toggled when pressed).
; Only toggle if !SwapCapsEsc and no other key was pressed, which allows
    ; CapsLock to be used as a modifier key.
CapsLock::
^CapsLock::
!CapsLock::
+CapsLock::
^!CapsLock::
^+CapsLock::
!+CapsLock::
^!+CapsLock::
  KeyWait, CapsLock
  If (A_PriorKey="CapsLock") {
    ; If ScrollLock is on, swap CapsLock with Esc
    If (GetKeyState("ScrollLock","T")) {
      Send {Esc down}{Esc up}
    }
    Else {
      SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
    }
  }
  Return

$Esc::
    ; If ScrollLock is on, swap Esc with CapsLock
  If (GetKeyState("ScrollLock","T")) {
    SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
  }
  Else {
    Send {Esc down}{Esc up}
  }
  Return
