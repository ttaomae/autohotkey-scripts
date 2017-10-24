XButton1 & XButton2::MoveMouseToMonitor(1)
XButton2 & XButton1::MoveMouseToMonitor(-1)

MoveMouseToMonitor(MonitorDelta := 0)
{
    CoordMode, Mouse, Screen
    MouseGetPos, X, Y
    Monitor := GetMonitor(X, Y, MonitorDelta)

    GetMonitorDimensions(Monitor, CX, CY, HW, HH)
    MouseMove, CX, CY, 5
}
