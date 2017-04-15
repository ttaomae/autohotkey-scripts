# autohotkey-scripts
A miscellaneous collection of [AutoHotkey](http://ahkscript.org/) scripts. They were mostly designed with my specific usage in mind and often assume that a 5-button mouse is being used. However, you may find some of them useful.

## window_manager.ahk
Adds additional windows tiling options beyond what Snap for Windows 7 and 8 provide (it is my understanding that Windows 10 has improved snap to do what this script does and probably more).

Use the `Windows key` + Numpad keys to move the current active window to different edges of the screen or to different monitors. Numpad keys `1`-`9` move the window on the current screen, while `+` and `-` will move the window to the next or previous monitor. Numpad keys `*`, `/`, and `0` will maximize, restore, and minimize, respectively.

Use the `Windows Key` + `Ctrl` + Numpad keys (`1`-`9`) to move the current active window to the edges of the region currently occupied by the window. This allows a limited form of additional tiling beyond just four quadrants.

## mirror_keyboard.ahk
An implementation of the [Mirrorboard](http://blog.xkcd.com/2007/08/14/mirrorboard-a-one-handed-keyboard-layout-for-the-lazy/).

In addition to using caps lock as the modifier, it also allows the use of the fourth mouse button, which frees up your left pinky, making it a little more natural to type.

## shutdown.ahk
Provides hotkeys to sleep, hibernate, or shutdown your computer.

Hotkey | Function
-------|---------
`Ctrl` + `Esc` | Sleep
`Ctrl` + `Windows Key` + `Esc` | Hibernate
`Ctrl` + `Windows Key` + `Alt` + Esc` | Shut down

## *_hotkeys.ahk
Provides miscellaneous hotkeys and remappings

Hotkey | Function | Comment
-------|----------|--------
`mouse4` | `middle-click` 
`mouse4` + scroll wheel | `Page Up` / `Page Down`
`Menu Key` + `[WASD]` | `[↑←↓→]`
`Caps Lock` + `[WASD]` | `[↑←↓→]`
`Caps Lock` + `[HJKL]` | `[←↓↑→]` | Disabled by default; interferes with mirror_keyboard script)
`Windows Key` + scroll wheel | Volume up/down
`mouse5` + scroll wheel | Volume up/down
`Windows Key` + `(PageUp|PageDown)` | Volume up/down
`Windows Key` + `Pause` | Mute
`Windows Key` + `Insert` | Play/Pause
`Windows Key` + `Home` | Stop
`Windows Key` + `Delete` | Previous
`Windows Key` + `End` | Next
