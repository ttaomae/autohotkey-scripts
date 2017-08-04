; Allows CapsLock to be used as a modifier key.
; Swaps Esc and CapsLock if ScrollLock is enabled.

; Enable ScrollLock to enable Esc <--> CapsLock swap by default when this script
; is run. Remove or comment out the line below to disable this behavior.
SetScrollLockState, On

; Do not toggle CapsLock until key is released (normally toggled when pressed)
; and only if no other key was pressed. This allows CapsLock to be used as a
; modifier key without unecessarily toggling CapsLock each time.
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
