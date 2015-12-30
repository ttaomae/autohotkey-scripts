; mouse4 + scroll -> page up/down
XButton1 & WheelUp::Send {PgUp}
XButton1 & WheelDown::Send {PgDn}

; menu/application key + WASD
Appskey & W::Send {Up}
Appskey & A::Send {Left}
Appskey & S::Send {Down}
Appskey & D::Send {Right}

; if caps lock is down
; caps lock as modifier
#If GetKeyState("CapsLock", "P")
    ; WASD arrows
    ; does not work with mirror keyboard
    ; W::Send {Up}
    ; A::Send {Left}
    ; S::Send {Down}
    ; D::Send {Right}

    ; Vim arrows
    H::Send {Left}
    J::Send {Down}
    K::Send {Up}
    L::Send {Right}
#If