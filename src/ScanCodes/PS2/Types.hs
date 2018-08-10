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

module ScanCodes.PS2.Types where

--------------------------------------------------

import Prelude_scan_codes

import ScanCodes.PS2.Keys

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
    , 'character'   = Shiftable '`' '~'
    , 'twinKeys'    = []
    , 'isModifier'  = 'def'
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
  , character   :: KeyCharacter       -- ^
  , twinKeys    :: [Key]              -- ^ 
  , isModifier  :: IsModifier         -- ^
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

TODO

@
import qualified "bytestring" Data.ByteString as B
import           "bytestring" Data.ByteString      (ByteString)

B.pack :: [Word8] -> ByteString
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

{-| 

-}

data KeyCharacter

  = Unprintable
  | Printable   Char
  | Shiftable   Char Char
  
  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)

-------------------------

-- | @= 'defaultKeyCharacter'@
instance Default KeyCharacter where
  def = defaultKeyCharacter

-- | @= 'Unprintable'@
defaultKeyCharacter :: KeyCharacter
defaultKeyCharacter = Unprintable

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