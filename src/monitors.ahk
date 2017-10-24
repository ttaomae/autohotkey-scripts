; gets the index of the monitor that the specified (X, Y) coordinate is on
; returns 0 if coordinates are not on any monitor
GetMonitor(X, Y, MonitorDelta := 0)
{
    Result := 0
    SysGet, MonitorCount, MonitorCount
    ; for each monitor
    Loop, %MonitorCount%
    {
        SysGet, Monitor, Monitor, %A_Index%

        ; check if center of window is within bounding box of monitor
        if (X >= MonitorLeft && X <= MonitorRight
                && Y >= MonitorTop && Y <= MonitorBottom) {
            Result := A_Index
            break
        }
    }

    if (Result = 0) {
        return 0
    }

    ; adjust monitor to zero-based index for modulo arithmetic
    CurrentMonitor := Result - 1

    ; adjust delta so that it is not greater than the monitor count
    MonitorDelta := Mod(MonitorDelta, MonitorCount)

    Result := Mod(MonitorCount + CurrentMonitor + MonitorDelta, MonitorCount)

    ; convert back to one-based index
    return Result + 1
}

; gets the dimensions of the specified monitor
; CX/CY = center X/Y
; HW/HH = half width/height
GetMonitorDimensions(MonitorN, byref CX, byref CY, byref HW, byref HH)
{
    SysGet, Monitor, MonitorWorkArea, %MonitorN%

    CX := (MonitorLeft + MonitorRight) / 2
    CY := (MonitorTop + MonitorBottom) / 2
    HW := (MonitorRight - MonitorLeft) / 2
    HH := (MonitorBottom - MonitorTop) / 2
}
