# autohotkey-scripts
A miscellaneous collection of [AutoHotkey](http://ahkscript.org/) scripts. They were mostly designed
with my specific usage in mind and often assume that a 5-button mouse is being used. However, you
may find some of them useful.

## startup.ahk
Aggregates other scripts. A shortcut to this file should be placed in your startup folder at
**C:\\Users\\&lt;username&gt;\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup**.
If you want to disable any other scripts simply delete or comment out (by adding a `;` to the
beginning of the line) the corresponding `#Include` statement.

## capslock_hotkeys.ahk
Allows `Caps Lock` to be used as a modifier without toggling caps lock. Also swaps `Caps Lock` and
`Esc` when `Scroll Lock` is enabled.

## window_manager.ahk
Adds additional window tiling options beyond what Snap for Windows 7 and 8 provide. Windows 10 has
improved window tiling and more overlap with this script. This script does not interfere with Snap,
so you may freely use both.

Use the `Windows key` + Numpad keys to move the current active window to different edges of the
screen or to different monitors. Numpad keys `1`-`9` move the window on the current screen, while
`+` and `-` will move the window to the next or previous monitor. Numpad keys `*`, `/`, and `0` will
maximize, restore, and minimize, respectively.

Use the `Windows Key` + `Ctrl` + Numpad keys (`1`-`9`) to move the current active window to the
edges of the region currently occupied by the window. This allows a limited form of additional
tiling beyond just four quadrants.

## mirror_keyboard.ahk
An implementation of the
[Mirrorboard](http://blog.xkcd.com/2007/08/14/mirrorboard-a-one-handed-keyboard-layout-for-the-lazy/).

In addition to using caps lock as the modifier, it also allows the use of the fourth mouse button,
which frees up your left pinky, making it a little more natural to type.

## shutdown.ahk
Provides hotkeys to sleep, hibernate, or shutdown your computer.

Hotkey | Function
-------|---------
`Ctrl` + `Esc` | Sleep
`Ctrl` + `Windows Key` + `Esc` | Hibernate
`Ctrl` + `Windows Key` + `Alt` + `Esc` | Shut down

## *_hotkeys.ahk
Provides miscellaneous hotkeys and remappings

Hotkey | Function | Comment
-------|----------|--------
`mouse4` | `middle-click`
`mouse4` + scroll wheel | `Page Up` / `Page Down`
`Menu Key` + `[WASD]` | `[↑←↓→]`
`Caps Lock` + (`Ctrl` + `Alt` + `Shift`) + `[IJKL]` | (`Ctrl` + `Alt` + `Shift`) + `[↑←↓→]` | Any combination of `Ctrl`, `Alt`, and `Shift` can be used
`Caps Lock` + (`Ctrl` + `Alt` + `Shift`) + `[UO]` | (`Ctrl` + `Alt` + `Shift`) + `Home`/`End` | Any combination of `Ctrl`, `Alt`, and `Shift` can be used
`Caps Lock` + (`Ctrl` + `Alt` + `Shift`) + `[HN]` | (`Ctrl` + `Alt` + `Shift`) + `PgUp`/`PgDn` | Any combination of `Ctrl`, `Alt`, and `Shift` can be used
`Caps Lock` + (`Shift`) + `[M.]` | (`Shift`) + `[←→]`
`Caps Lock` + `P` | `Backspace`
`Caps Lock` + `[` | `Delete`
`Caps Lock` + `[WASD]` | `[↑←↓→]` | Disabled by default (interferes with mirror_keyboard script)
`Caps Lock` + `[HJKL]` | `[←↓↑→]` | Vim arrows. Disabled by default (interferes with other navigation keys)
`Windows Key` + scroll wheel | Volume up/down
`mouse5` + scroll wheel | Volume up/down
`Windows Key` + `(PageUp\|PageDown)` | Volume up/down
`Windows Key` + `Pause` | Mute
`Windows Key` + `Insert` | Play/Pause
`Windows Key` + `Home` | Stop
`Windows Key` + `Delete` | Previous
`Windows Key` + `End` | Next
`Caps Lock` | `Esc` | If `Scroll Lock` is enabled
`Esc` | `Caps Lock` | If `Scroll Lock` is enabled
