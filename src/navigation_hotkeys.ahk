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
    ; H::Send {Left}
    ; J::Send {Down}
    ; K::Send {Up}
    ; L::Send {Right}

    ; IJKL arrows, UO Home/End, HN PgUp/PgDn
    I::Send {Up}
    J::Send {Left}
    K::Send {Down}
    L::Send {Right}
    U::Send {Home}
    O::Send {End}
    H::Send {PgUp}
    N::Send {PgDn}

    ; Ctrl + IJKLUOHN
    ^I::Send ^{Up}
    ^J::Send ^{Left}
    ^K::Send ^{Down}
    ^L::Send ^{Right}
    ^U::Send ^{Home}
    ^O::Send ^{End}
    ^H::Send ^{PgUp}
    ^N::Send ^{PgDn}

    ; Alt + IJKLUOHN
    !I::Send !{Up}
    !J::Send !{Left}
    !K::Send !{Down}
    !L::Send !{Right}
    !U::Send !{Home}
    !O::Send !{End}
    !H::Send !{PgUp}
    !N::Send !{PgDn}

    ; Shift + IJKLUOHN
    +I::Send +{Up}
    +J::Send +{Left}
    +K::Send +{Down}
    +L::Send +{Right}
    +U::Send +{Home}
    +O::Send +{End}
    +H::Send +{PgUp}
    +N::Send +{PgDn}

    ; Ctrl + Alt + IJKLUOHN
    ^!I::Send ^!{Up}
    ^!J::Send ^!{Left}
    ^!K::Send ^!{Down}
    ^!L::Send ^!{Right}
    ^!U::Send ^!{Home}
    ^!O::Send ^!{End}
    ^!H::Send ^!{PgUp}
    ^!N::Send ^!{PgDn}

    ; Ctrl + Shift + IJKLUOHN
    ^+I::Send ^+{Up}
    ^+J::Send ^+{Left}
    ^+K::Send ^+{Down}
    ^+L::Send ^+{Right}
    ^+U::Send ^+{Home}
    ^+O::Send ^+{End}
    ^+H::Send ^+{PgUp}
    ^+N::Send ^+{PgDn}

    ; Alt + Shift + IJKLUOHN
    !+I::Send !+{Up}
    !+J::Send !+{Left}
    !+K::Send !+{Down}
    !+L::Send !+{Right}
    !+U::Send !+{Home}
    !+O::Send !+{End}
    !+H::Send !+{PgUp}
    !+N::Send !+{PgDn}

    ; Ctrl + Alt + Shift + IJKLUOHN
    ^!+I::Send ^!+{Up}
    ^!+J::Send ^!+{Left}
    ^!+K::Send ^!+{Down}
    ^!+L::Send ^!+{Right}
    ^!+U::Send ^!+{Home}
    ^!+O::Send ^!+{End}
    ^!+H::Send ^!+{PgUp}
    ^!+N::Send ^!+{PgDn}
#If
