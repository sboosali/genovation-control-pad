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

e.g. a scan-code specification (from the `.yaml` file included in this package):

@
- id: 1
  basecase:  \"`\"
  uppercase: \"~\"
  PS1:
    make:  \"29\"
    break: \"A9\"
  PS2:
    make:  \"0E\"
    break: \"F00E\"
  PS3:
    make:  \"0E\"
    break: \"F00E\"
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

The fields:

* 'twinKeys': Other keys with the same name, and that by default, are translated into each other. As examples: 'Key_Right_Ctrl' and 'Key_Left_Ctrl'; 'Key_KeyPad_Enter' and 'Key_Enter'.
* 'side': @Nothing@ means either that the key has no 'twinKeys', or if it does, the distinction isn't the side of the keyboard each twin is on.



e.g.

@

  'KeyDescription'
    { 'key'         = 'Key_Backtick'
    , 'number'      = 001
    , 'twinKeys'    = []
    , 'isModifier'  = 'def'
    , 'isShiftable' = 'YesShiftable'
    , 'isPrintable' = 'YesPrintable'
    , 'isNumpad'    = 'def'
    , 'side'        = 'Nothing'
    , 'codes1'      = 'Codes' { 'pressCode'   = "29"
                          , 'releaseCode' = "A9"
                          }
    , 'codes2'      = 'Codes' { 'pressCode'   =   "0E"
                          , 'releaseCode' = "F00E"
                          }
    , 'codes3'      = 'Codes' { 'pressCode'   =   "0E"
                          , 'releaseCode' = "F00E"
                          }
    }

@


-}

data KeyDescription = KeyDescription

  { key         :: Key                -- ^ 
  , number      :: Natural            -- ^
  , twinKeys    :: [Key]              -- ^ 

  , isModifier  :: IsModifier         -- ^
  , isShiftable :: IsShiftable        -- ^
  , isPrintable :: IsPrintable        -- ^
  , isNumpad    :: IsNumpad           -- ^
  , side        :: Maybe Side         -- ^

  , codes1      :: Codes              -- ^ 
  , codes2      :: Codes              -- ^ 
  , codes3      :: Codes              -- ^
  }

  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)
  
  -- , codingSet1     :: Code
  -- , codingSet2     :: Code
  -- , codingSet3     :: Code

--------------------------------------------------

{-| The byte-codes representing: pressing the key down; and releasing the key back up.


e.g.

@
Code { 'pressCode'   = [      0x0E]
     , 'releaseCode' = [0xF0, 0x0E]
     }
@

-}

data Codes = Codes

  { pressCode   :: Code
  , releaseCode :: Code
  }
  
  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)

--------------------------------------------------

{-| 

-}

newtype Code = Code

  String --TODO :: [Word8]? ByteString?

  deriving stock    (Show,Read,Lift,Generic)
  deriving newtype  (Eq,Ord,Semigroup,Monoid)
  deriving newtype  (NFData,Hashable)

instance IsString Code where fromString = coerce


--------------------------------------------------

{-| each scan-code is a bytestring.

@
ScanCode [      0x0E]
ScanCode [0xF0, 0x0E]
@

-}

newtype ScanCode = ScanCode

  [Word8]

  deriving stock    (Show,Read,Lift,Generic)
  deriving newtype  (Eq,Ord,Semigroup,Monoid)
  deriving newtype  (NFData,Hashable)

instance IsList ScanCode where
  type Item ScanCode = Word8
  fromList = coerce
  toList   = coerce

-- {-| each scan-code is a bytestring.

-- -}

-- newtype ScanCode = ScanCode

--   ByteString

--   deriving stock    (Show,Read,Generic)
--   deriving newtype  (Eq,Ord,Semigroup,Monoid)
--   deriving newtype  (NFData,Hashable)

-- instance IsString ScanCode where
--   fromString = coerce > fromString

--------------------------------------------------

{-| Whether the key is on the keypad.

-}

data IsNumpad

  = NotNumpad
  | YesNumpad
  
  deriving stock    (Eq,Ord,Show,Read,Enum,Bounded,Ix,Lift,Generic)
  deriving anyclass (Enumerable,NFData,Hashable)

--TODO rename IsNumpad

-------------------------

-- | @= 'defaultIsNumpad'@
instance Default IsNumpad where
  def = defaultIsNumpad

-- | @= 'NotNumpad'@
defaultIsNumpad :: IsNumpad
defaultIsNumpad = NotNumpad

--------------------------------------------------

{-| Whether the key can be shifted;
i.e. the @Shift@ key affects it.

-}

data IsShiftable

  = NotShiftable
  | YesShiftable
  
  deriving stock    (Eq,Ord,Show,Read,Enum,Bounded,Ix,Lift,Generic)
  deriving anyclass (Enumerable,NFData,Hashable)

-------------------------

-- | @= 'defaultIsShiftable'@
instance Default IsShiftable where
  def = defaultIsShiftable

-- | @= 'YesShiftable'@
defaultIsShiftable :: IsShiftable
defaultIsShiftable = YesShiftable

--------------------------------------------------

{-| Whether the key represents a printable character.

-}

data IsPrintable

  = NotPrintable
  | YesPrintable

  deriving stock    (Eq,Ord,Show,Read,Enum,Bounded,Ix,Lift,Generic)
  deriving anyclass (Enumerable,NFData,Hashable)

-------------------------

-- | @= 'defaultIsPrintable'@
instance Default IsPrintable where
  def = defaultIsPrintable

-- | @= 'YesPrintable'@
defaultIsPrintable :: IsPrintable
defaultIsPrintable = YesPrintable

--------------------------------------------------

{-| Whether the key is a modifier key.

-}

data IsModifier

  = NotModifier
  | YesModifier

  deriving stock    (Eq,Ord,Show,Read,Enum,Bounded,Ix,Lift,Generic)
  deriving anyclass (Enumerable,NFData,Hashable)

-------------------------

-- | @= 'defaultIsModifier'@
instance Default IsModifier where
  def = defaultIsModifier

-- | @= 'NotModifier'@
defaultIsModifier :: IsModifier
defaultIsModifier = NotModifier

--------------------------------------------------

{-| If the key has "mulitples", whether it's on the left- or the right-side of the keyboard.

-}

data Side

  = LeftSide
  | RightSide

  deriving stock    (Eq,Ord,Show,Read,Enum,Bounded,Ix,Lift,Generic)
  deriving anyclass (Enumerable,NFData,Hashable)

-------------------------

-- | @= 'defaultIsSide'@
instance Default Side where
  def = defaultSide

-- | @= 'LeftSide'@
defaultSide :: Side
defaultSide = LeftSide

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

KeyDescription
  { key         = Key_
  , number      = _
  , twinKeys    = []
  , side        = Nothing
  , isModifier  = def
  , isShiftable = def
  , isPrintable = def
  , isNumpad    = def
  , codes1      = _
  , codes2      = _
  , codes3      = _
  }

-}
--------------------------------------------------
--------------------------------------------------