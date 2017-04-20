# autohotkey-scripts
A miscellaneous collection of [AutoHotkey](http://ahkscript.org/) scripts. They were mostly designed with my specific usage in mind and often assume that a 5-button mouse is being used. However, you may find some of them useful.

## startup.ahk
Aggregates other scripts. A shortcut to this file should be placed in your startup folder, located at C:\Users\<username>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup.

## capslock_hotkeys.ahk
Allows `Caps Lock` to be used as a modifier without toggling caps lock. Also swaps `Caps Lock` and `Esc` when `Scroll Lock` is enabled.

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
(`Ctrl` + `Alt` + `Shift`) + `[IJKL]` | (`Ctrl` + `Alt` + `Shift`) + `[↑←↓→]`
(`Ctrl` + `Alt` + `Shift`) + `[UO]` | (`Ctrl` + `Alt` + `Shift`) + `Home`/`End`
(`Ctrl` + `Alt` + `Shift`) + `[HN]` | (`Ctrl` + `Alt` + `Shift`) + `PgUp`/`PgDn`
`Caps Lock` + `[WASD]` | `[↑←↓→]` | Disabled by default (interferes with mirror_keyboard script)
`Caps Lock` + `[HJKL]` | `[←↓↑→]` | Disabled by default (interferes with other navigation keys)
`Windows Key` + scroll wheel | Volume up/down
`mouse5` + scroll wheel | Volume up/down
`Windows Key` + `(PageUp|PageDown)` | Volume up/down
`Windows Key` + `Pause` | Mute
`Windows Key` + `Insert` | Play/Pause
`Windows Key` + `Home` | Stop
`Windows Key` + `Delete` | Previous
`Windows Key` + `End` | Next
`Caps Lock` | `Esc` | If `Scroll Lock` is on
`Esc` | `Caps Lock` | If `Scroll Lock` is on
