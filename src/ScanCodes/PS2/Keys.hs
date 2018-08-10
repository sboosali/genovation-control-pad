
--------------------------------------------------

{-|

===

Links:

* <https://en.wikipedia.org/wiki/Scancode>

===

-}

module ScanCodes.PS2.Keys where

--------------------------------------------------

import Prelude_scan_codes

--------------------------------------------------
--------------------------------------------------

{-|

-}

data Key

  = Key_Backtick            -- ^ @`@
  
  | Key_1                   -- ^ @1@
  
  | Key_2                   -- ^ @2@
  
  | Key_3                   -- ^ @3@
  
  | Key_4                   -- ^ @4@
  
  | Key_5                   -- ^ @5@
  
  | Key_6                   -- ^ @6@
  
  | Key_7                   -- ^ @7@
  
  | Key_8                   -- ^ @8@
  
  | Key_9                   -- ^ @9@
  
  | Key_0                   -- ^ @0@
  
  | Key_Hyphen              -- ^ @-@
  
  | Key_Equals              -- ^ @=@
  
  | Key_Backspace           -- ^ @"Back Space"@
  
  | Key_Tab                 -- ^ @Tab ↹@
  
  | Key_Q                   -- ^ @q@
  
  | Key_W                   -- ^ @w@
  
  | Key_E                   -- ^ @e@
  
  | Key_R                   -- ^ @r@
  
  | Key_T                   -- ^ @t@
  
  | Key_Y                   -- ^ @y@
  
  | Key_U                   -- ^ @u@
  
  | Key_I                   -- ^ @i@
  
  | Key_O                   -- ^ @o@
  
  | Key_P                   -- ^ @p@
  
  | Key_OpenSquareBracket   -- ^ @[@
  
  | Key_ClosedSquareBracket -- ^ @]@

  | Key_CapsLock            -- ^ @"Caps Lock"@
                            --
                            -- The caps-lock hardware-modifier.

  | Key_A                   -- ^ @a@
  
  | Key_S                   -- ^ @s@
  
  | Key_D                   -- ^ @d@
  
  | Key_F                   -- ^ @f@
  
  | Key_G                   -- ^ @g@
  
  | Key_H                   -- ^ @h@
  
  | Key_J                   -- ^ @j@
  
  | Key_K                   -- ^ @k@
  
  | Key_L                   -- ^ @l@
  
  | Key_Semicolon           -- ^ @;@
  
  | Key_Apostrophe          -- ^ @'@

  | Key_Enter               -- ^ @↵ Enter@
                            --
                            -- The enter key.

  | Key_Left_Shift          -- ^ @⇧@
                            --
                            -- The (default) shift key, on the left side of the keyboard.

  | Key_Z                   -- ^ @z@
  | Key_X                   -- ^ @x@
  | Key_C                   -- ^ @c@
  | Key_V                   -- ^ @v@
  | Key_B                   -- ^ @b@
  | Key_N                   -- ^ @n@
  | Key_M                   -- ^ @m@
  | Key_Comma               -- ^ @,@
  | Key_Period              -- ^ @.@
  | Key_Slash               -- ^ @/@
  | Key_Right_Shift         -- ^
  | Key_Left_Ctrl           -- ^ @Ctrl@
                            --
                            -- The (default) control key, on the left side of the keyboard.

  | Key_Left_Alt            -- ^ @Alt@
                            --
                            -- The (default) alt key, on the left side of the keyboard.

  | Key_Spacebar            -- ^ @␣@
  
  | Key_Right_Alt           -- ^
  
  | Key_Right_Ctrl          -- ^
  
  | Key_Insert              -- ^ @\"Insert\"@
  
  | Key_Delete              -- ^ @\"Delete\"@
  
  | Key_ArrowLeft           -- ^ @←@
  
  | Key_Home                -- ^ @\"Home\"@
  
  | Key_End                 -- ^ @\"End\"@
  
  | Key_ArrowUp             -- ^ @↑@
  
  | Key_ArrowDown           -- ^ @↓@
  
  | Key_PageUp              -- ^ @"Page Up"@
  
  | Key_PageDown            -- ^ @"Page Down"@
  
  | Key_ArrowRight          -- ^ @→@
  
  | Key_NumLock             -- ^ @"Num Lock"@
                            --
                            -- The num-lock hardware-modifier.

  | Key_KeyPad_7            -- ^ @7@
                            --
                            -- On the key-pad.

  | Key_KeyPad_4            -- ^ @4@
                            --
                            -- On the key-pad.

  | Key_KeyPad_1            -- ^ @1@
                            --
                            -- On the key-pad.

  | Key_KeyPad_Divide       -- ^ @/@
                            --
                            -- On the key-pad.

  | Key_KeyPad_8            -- ^ @8@
                            --
                            -- On the key-pad.

  | Key_KeyPad_5            -- ^ @5@
                            --
                            -- On the key-pad.

  | Key_KeyPad_2            -- ^ @2@
                            --
                            -- On the key-pad.

  | Key_KeyPad_0            -- ^ @0@
                            --
                            -- On the key-pad.

  | Key_KeyPad_Multiply     -- ^ @*@
                            --
                            -- On the key-pad.

  | Key_KeyPad_9            -- ^ @9@
                            --
                            -- On the key-pad.

  | Key_KeyPad_6            -- ^ @6@
                            --
                            -- On the key-pad.

  | Key_KeyPad_3            -- ^ @3@
                            --
                            -- On the key-pad.

  | Key_KeyPad_Decimal      -- ^ @.@
                            --
                            -- On the key-pad.

  | Key_KeyPad_Subtract     -- ^ @-@
                            --
                            -- On the key-pad.

  | Key_KeyPad_Add          -- ^ @+@
                            --
                            -- On the key-pad.

  | Key_KeyPad_Enter        -- ^ @\"Enter\"@
                            --
                            -- An enter key on the key-pad.

  | Key_Esc                 -- ^ @\"Esc\"@
                            --
                            -- The escape key.

  | Key_F1                  -- ^ @F1@
                            --
                            -- A function key.

  | Key_F2                  -- ^ @F2@
                            --
                            -- A function key.

  | Key_F3                  -- ^ @F3@
                            --
                            -- A function key.

  | Key_F4                  -- ^ @F4@
                            --
                            -- A function key.

  | Key_F5                  -- ^ @F5@
                            --
                            -- A function key.

  | Key_F6                  -- ^ @F6@
                            --
                            -- A function key.

  | Key_F7                  -- ^ @F7@
                            --
                            -- A function key.

  | Key_F8                  -- ^ @F8@
                            --
                            -- A function key.

  | Key_F9                  -- ^ @F9@
                            --
                            -- A function key.

  | Key_F10                 -- ^ @F10@
                            --
                            -- A function key.

  | Key_F11                 -- ^ @F11@
                            --
                            -- A function key.

  | Key_F12                 -- ^ @F12@
                            --
                            -- A function key.

  | Key_PrintScreen         -- ^ @"PrtScr SysRq"@

  | Key_ScrollLock          -- ^ @"Scroll Lock"@

  | Key_PauseBreak          -- ^ @"Pause Break"@

  | Key_Backslash           -- ^ @\\@

  deriving stock    (Enum,Bounded,Ix)
  deriving stock    (Show,Read,Eq,Ord,Lift,Generic)
  deriving anyclass (Enumerable,NFData,Hashable)

--------------------------------------------------
--------------------------------------------------
{-

-}
--------------------------------------------------
--------------------------------------------------