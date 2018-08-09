{-# LANGUAGE OverloadedStrings     #-}

{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

--------------------------------------------------

{-|


===

@"PS/2"@ abbreviates "Personal System/2".

===


===



===

e.g. a scan-code specification:

@

- id: 1
  basecase:  "`"
  uppercase: "~"
  PS1:
    make:  "29"
    break: "A9"
  PS2:
    make:  "0E"
    break: "F0 0E"
  PS3:
    make:  "0E"
    break: "F0 0E"

@

from <http://www.vetra.com/scancodes.html "PS/2 PC Keyboard Scan Sets Translation Table">

===

Links:

* <https://en.wikipedia.org/wiki/PS/2_port>
* <http://www.vetra.com/scancodes.html>

===

-}

module ScanCodes.Types where

--------------------------------------------------

import Prelude_scan_codes

--------------------------------------------------

-- import qualified

--------------------------------------------------
--------------------------------------------------

{-|



-}

data KeyDescription = KeyDescription

  { key        :: Key           -- ^ 
  , identifier :: Natural       -- ^ 
  , isNumpad   :: IsNumpad      -- ^ 
  , codes1     :: Codes         -- ^ 
  , codes2     :: Codes         -- ^ 
  , codes3     :: Codes         -- ^ 
  }

  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)
  
  -- , codingSet1     :: Code
  -- , codingSet2     :: Code
  -- , codingSet3     :: Code

--------------------------------------------------

{-|

-}

data Codes = Codes

  { pressCode   :: Code
  , releaseCode :: Code
  }
  
  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)
  
regularCode :: Code -> Codes
regularCode pressCode = Codes{..}
  where
  releaseCode = "F0" <> pressCode

--------------------------------------------------

{-|

-}

newtype Code = Code

  String

  deriving stock    (Show,Read,Lift,Generic)
  deriving newtype  (Eq,Ord,Semigroup,Monoid)
  deriving newtype  (NFData,Hashable)

instance IsString Code where fromString = coerce

--------------------------------------------------

{-|

-}

data IsNumpad

  = YesNumpad
  | NotNumpad
  
  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)

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


data KeyCharacters
  = PrintableKey
  | UnprintableKey


{-|

-}
data ScanCode



  Key_2
  Key_3
  Key_4
  Key_5
  Key_6
  Key_7
  Key_8
  Key_9
  Key_0
  Key_-
  Key_=
  Key_Backspace
  Key_Tab
  Key_q
  Key_w
  Key_e
  Key_r
  Key_t
  Key_y
  Key_u
  Key_i
  Key_o
  Key_p
  Key_[
  Key_]
  Key_CapsLock
  Key_a
  Key_s
  Key_d
  Key_f
  Key_g
  Key_h
  Key_j
  Key_k
  Key_l
  Key_;
  Key_'
  Key_Enter
  Key_Left_Shift
  Key_z
  Key_x
  Key_c
  Key_v
  Key_b
  Key_n
  Key_m
  Key_,
  Key_.
  Key_/
  Key_Right_Shift
  Key_Left_Ctrl
  Key_Left_Alt
  Key_Spacebar
  Key_Right_Alt
  Key_Right_Ctrl
  Key_Insert
  Key_Delete
  Key_ArrowLeft
  Key_Home
  Key_End
  Key_ArrowUp
  Key_ArrowDown
  Key_PageUp
  Key_PageDown
  Key_ArrowRight
  Key_NumLock
  Key_KeyPad_7
  Key_KeyPad_4
  Key_KeyPad_1
  Key_KeyPad_/
  Key_KeyPad_8
  Key_KeyPad_5
  Key_KeyPad_2
  Key_KeyPad_0
  Key_KeyPad_*
  Key_KeyPad_9
  Key_KeyPad_6
  Key_KeyPad_3
  Key_KeyPad_.
  Key_KeyPad_-
  Key_KeyPad_+
  Key_KeyPad_Enter
  Key_Esc
  Key_F1
  Key_F2
  Key_F3
  Key_F4
  Key_F5
  Key_F6
  Key_F7
  Key_F8
  Key_F9
  Key_F10
  Key_F11
  Key_F12
  Key_PrintScreen
  Key_ScrollLock
  Key_PauseBreak
  Key_\\




-}
--------------------------------------------------
--------------------------------------------------