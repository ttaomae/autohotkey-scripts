; http://ahkscript.org/docs/commands/Shutdown.htm

; Win+Escape => sleep
#Escape::
  DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
  Return

; Ctrl+Win+Escape => sleep
^#Escape::
  DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
  Return

; Alt+Ctrl+Win+Escape => shut down
!^#Escape::Shutdown, 1+8 ; Shutdown + Power down
