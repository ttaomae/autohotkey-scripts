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
    If (!SwapCapsEsc) {
      SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
    }
    Else {
      Send {Esc}
    }
  }
  Return

$Esc::
  If (SwapCapsEsc) {
    SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
  }
  Else {
    Send {Esc}
  }
  Return
