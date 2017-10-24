#Include %A_ScriptDir%\WinGetPosEx.ahk
; https://autohotkey.com/boards/viewtopic.php?t=3392

#Numpad1::WindowSnap(GetActiveWindow(), "bottom", "left")
#Numpad2::WindowSnap(GetActiveWindow(), "bottom", "max")
#Numpad3::WindowSnap(GetActiveWindow(), "bottom", "right")
#Numpad4::WindowSnap(GetActiveWindow(), "max", "left")
#Numpad5::WindowSnap(GetActiveWindow(), "center", "center")
#Numpad6::WindowSnap(GetActiveWindow(), "max", "right")
#Numpad7::WindowSnap(GetActiveWindow(), "top", "left")
#Numpad8::WindowSnap(GetActiveWindow(), "top", "max")
#Numpad9::WindowSnap(GetActiveWindow(), "top", "right")

#Numpad0::WindowSnap(GetActiveWindow(), "min", "min")
#NumpadMult::WindowSnap(GetActiveWindow(), "max", "max")
#NumpadDiv::WindowSnap(GetActiveWindow(), "restore", "restore")

#NumpadAdd::WindowSnap(GetActiveWindow(), "center", "center", 1)
#NumpadSub::WindowSnap(GetActiveWindow(), "center", "center", -1)

^#Numpad1::WindowSubSnap(GetActiveWindow(), "bottom", "left")
^#Numpad2::WindowSubSnap(GetActiveWindow(), "bottom", "max")
^#Numpad3::WindowSubSnap(GetActiveWindow(), "bottom", "right")
^#Numpad4::WindowSubSnap(GetActiveWindow(), "max", "left")
^#Numpad5::WindowSubSnap(GetActiveWindow(), "center", "center")
^#Numpad6::WindowSubSnap(GetActiveWindow(), "max", "right")
^#Numpad7::WindowSubSnap(GetActiveWindow(), "top", "left")
^#Numpad8::WindowSubSnap(GetActiveWindow(), "top", "max")
^#Numpad9::WindowSubSnap(GetActiveWindow(), "top", "right")

; gets the id of the current active window
GetActiveWindow()
{
    WinGet, active_id, ID, A
    return "ahk_id " . active_id
}

; snaps the specified window to one of the edges of the current monitor
; or minimize/maximize/restore the window
; the optional MonitorDelta parameter specifies whether or not the window
    ; should be moved to a new monitor
WindowSnap(WinTitle, Vertical, Horizontal, MonitorDelta:=0)
{
    ; find index of new monitor

    GetWindowCenterXY(WinTitle, X, Y)
    NewMonitor := GetMonitor(X, Y, MonitorDelta)

    GetMonitorDimensions(NewMonitor, CX, CY, HW, HH)

    if (Vertical = "min" && Horizontal = "min") {
        WinMinimize, %WinTitle%
        return
    }
    if (Vertical = "max" && Horizontal = "max") {
        WinMaximize, %WinTitle%
        return
    }
    if (Vertical = "restore" && Horizontal = "restore") {
        WinRestore, %WinTitle%
        return
    }

    if (Vertical = "top") {
        Y := CY - HH
        H := HH
    } else if (Vertical = "bottom") {
        Y := CY
        H := HH
    } else if (Vertical = "max") {
        Y := CY - HH
        H := 2 * HH
    } else if (Vertical = "center") {
        Y := CY - (HH / 2)
        H := HH
    }

    if (Horizontal = "left") {
        X := CX - HW
        W := HW
    } else if (Horizontal = "right") {
        X := CX
        W := HW
    } else if (Horizontal = "max") {
        X := CX - HW
        W := 2 * HW
    } else if (Horizontal = "center") {
        X := CX - (HW / 2)
        W := HW
    }

    ; restoring the window first is used to work around a bug where maximize
        ; will not always work
    ; however, this can cause a minor visual glitch
    WinRestore, %WinTitle%
    ResizeWindow(WinTitle, X, Y, W, H)
}

; snaps the specified window to one of the edges of the region currently
; occupied by the window
WindowSubSnap(WinTitle, Vertical, Horizontal)
{
    WinGet, active_id, ID, A
    ; get window dimensions and store
    WinGetPosEx(active_id, StartX, StartY, StartWidth, StartHeight)
    HalfHeight := StartHeight / 2
    HalfWidth := StartWidth / 2

    if (Vertical = "top") {
        Y := StartY
        H := HalfHeight
    } else if (Vertical = "bottom") {
        Y := StartY + HalfHeight
        H := HalfHeight
    } else if (Vertical = "max") {
        Y := StartY
        H := StartHeight
    } else if (Vertical = "center") {
        Y := StartY + (HalfHeight / 2)
        H := HalfHeight
    }

    if (Horizontal = "left") {
        X := StartX
        W := HalfWidth
    } else if (Horizontal = "right") {
        X := StartX + HalfWidth
        W := HalfWidth
    } else if (Horizontal = "max") {
        X := StartX
        W := Width
    } else if (Horizontal = "center") {
        X := StartX + (HalfWidth / 2)
        W := HalfWidth
    }

    ; restoring the window first is used to work around a bug where maximize
        ; will not always work
    ; however, this can cause a minor visual glitch
    WinRestore, %WinTitle%
    ResizeWindow(WinTitle, X, Y, W, H)
}

; resizes the specified window so that the top left corner is at (X, Y) and
    ; the windows has the specified width and height
ResizeWindow(WinTitle, X, Y, Width, Height)
{
    WinMove, %WinTitle%, , %X%, %Y%, %Width%, %Height%
}

; gets the coordinates of the center of the specified window and stores to X, Y
GetWindowCenterXY(WinTitle, byref X, byref Y)
{
    WinGetPos, XX, YY, Width, Height, %WinTitle%
    X := XX + (Width / 2)
    Y := YY + (Height / 2)
}
