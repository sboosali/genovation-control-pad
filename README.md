
GENOVATION CONTROLPAD CP24&CP48: ENCODING

Hex-Pair 
= two-digit hexadecimal-number
i.e. x00 is decimal 0, xff is decimal 255.
i.e. an 8-bit number (2^8=256) a.k.a a byte.

The encoding is "*algebraic*" (i.e. uncompressed, you can split it up into parts).

.

[Representation]

Hexadecimal representation. Every "morpheme" i.e. key/modifier/command is one-or-two hex-pairs long; with each "phrase" i.e. event being one-to-three of these hex-pairs. NOTE this is not the hexadecimal encoding of the ASCII representation of some key(/character); and it's not particularly ordered (afaict, it's not). TODO maybe it borrows the windows key-press event constants?



.

[Keys]

Each non-modifier non-special key is a hex-pair.

the device sends *keyboard events*, not *Unicode characters*. i.e. 

the event `Press("1")` is represented by:

  x16

while the (higher-level) "psedo-event" `Press("!")` is represented by three (lower-level) events:

  x12 
  x16 
  xF0 x12

i.e. 

  Press(Shift,Down)
  Press('1')
  Press(Shift,Up)

.

[Modifiers]

the Modifiers are:
- Control 
- Alt
- Shift 
- Win

a Modifier event can be:
- key-down (default) or key-up.
- left/primary (default) or right.


Ctrl(Down) = 14
CtrlUp = f014

Alt(Down) = 11
AltUp = f011

Shift(Down) = 12
ShiftUp = f012

Each modifier must be pressed down and then up. The key-up prefix is `f0`; the key-down suffix is null (i.e. it has no suffix).

.

[(Other) Special Keys]



.

[Commands]

the Delay command is a unary function represented by:
- the "operator", `e201`;
- the "operand", the duration, which is a multiple of 4, between 4 and 500, and in milliseconds, i.e. `{4,8,12,...492,496,500}`.

`Delay 0` is implicit, as the absence of a delay event. 

`Delay 504` isn't directly representable, but it's just two adjacent delays:

  Delay 500
  Delay 4

or as a multiple of four:

  Delay (125*4)
  Delay (001*4)

which is encoded as:

  e2 01 7d
  e2 01 01

where:

  0x7D = 125
  0x01 = 001

.

[Keybinding]

Each key binding has:

- two levels (each level having its own value for the following fields)

- an AutoRepeat Boolean

- a Mode enum (one of "Default (Autosense)", "Separate Up Codes", "Macro (Advanced)", "Literal (Advanced)"); TODO what do these mean?

- a Macro bytestring (220 bytes max for the FirstLevel when the SecondLevel is blank, or 111 bytes max per each level when both levels have macros).

- a Description string (arbitrary length, since it's only a field in the human-readable INI, while being absent from the BIN binary format that the device and/or the MacroMaster.exe GUI compiles from the INI).



.

[Macro]

Each "macro" has a maximum data-length of 220. i.e. 220 bytes, where most events are one-byte, modifer-keyups are two-bytes, commands are three-bytes.

"macro" means "the sequence of events you configure the device to be sent when you press a particular key".

.

[Keypad]

the keys are named by their number (e.g. "Key1") and numbered as expected (left-to-right-then-top-to-bottom, i.e. like reading English text), and one-based (i.e. start at "Key1", not "Key0"). e.g. on a CP48, which is the 48-key kepad, grouped 8-keys-wide and 6-keys-long, the top row holds: Key1, Key2, Key3, Key4, Key5, Key6, Key7, Key8. The INI has a "header" sections (named ""); the rest of its sections are these key names (as above).

