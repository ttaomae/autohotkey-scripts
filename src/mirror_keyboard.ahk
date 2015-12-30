; if caps lock is down
; caps lock as modifier
#If GetKeyState("CapsLock", "P")
    Q::Send {p}
    W::Send {o}
    E::Send {i}
    R::Send {u}
    T::Send {y}
    A::Send {;}
    S::Send {l}
    D::Send {k}
    F::Send {j}
    G::Send {h}
    Z::Send {.}
    X::Send {,}
    C::Send {m}
    V::Send {n}
    `::Send {Backspace}
#If

; alternate: use mouse4 button as modifier
XButton1 & Q::Send {p}
XButton1 & W::Send {o}
XButton1 & E::Send {i}
XButton1 & R::Send {u}
XButton1 & T::Send {y}
XButton1 & A::Send {;}
XButton1 & S::Send {l}
XButton1 & D::Send {k}
XButton1 & F::Send {j}
XButton1 & G::Send {h}
XButton1 & Z::Send {.}
XButton1 & X::Send {,}
XButton1 & C::Send {m}
XButton1 & V::Send {n}
XButton1 & `::Send {Backspace}