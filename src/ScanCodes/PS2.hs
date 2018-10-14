{-# LANGUAGE OverloadedStrings     #-}

--------------------------------------------------

{-|

===

TODO haddock headers/ dividers?

===

A **Scancode** is a number, that an input device (e.g. your keyboard) sends to a computer. 

===
@

import qualified "yaml" Data.Yaml as Y
Y.readFile "./data/PS2-ScanCodes.yaml"

@
===

-}

module ScanCodes.PS2 where

--------------------------------------------------

import Prelude_scan_codes

import ScanCodes.PS2.Types
import ScanCodes.PS2.Keys

--------------------------------------------------
--------------------------------------------------

{-| The @PS/2@ standard has a few minor variants.

-}

data Config = Config
  { 
  }
  deriving stock    (Show,Read,Eq,Ord,Lift,Generic)
  deriving anyclass (NFData,Hashable)

--------------------------------------------------

{-| All information about the given key:
its scan-codes, its position of the keyboard, any "sibling" keys,
and any characters (or strings) associated with those keys.

-}

describeKey :: Config -> Key -> KeyDescription
describeKey Config{..} = \case

  Key_Backtick            -> shiftableKeyDescription '`' '~'   001 ("0E") (Codes "29" "A9")

  Key_1                   -> shiftableKeyDescription '1' '!'   002 ("16") (Codes "02" "82")

  Key_2                   -> shiftableKeyDescription '2' '@'   003 ("1E") (Codes "03" "83")

  Key_3                   -> shiftableKeyDescription '3' '#'   004 ("26") (Codes "04" "84")

  Key_4                   -> shiftableKeyDescription '4' '$'   005 ("25") (Codes "05" "85")

  Key_5                   -> shiftableKeyDescription '5' '%'   006 ("2E") (Codes "06" "86")

  Key_6                   -> shiftableKeyDescription '6' '^'   007 ("36") (Codes "07" "87")

  Key_7                   -> shiftableKeyDescription '7' '&'   008 ("3D") (Codes "08" "88")

  Key_8                   -> shiftableKeyDescription '8' '*'   009 ("3E") (Codes "09" "89")

  Key_9                   -> shiftableKeyDescription '9' '('   010 ("46") (Codes "0A" "8A")

  Key_0                   -> shiftableKeyDescription '0' ')'   011 ("45") (Codes "0B" "8B")

  Key_Hyphen              -> shiftableKeyDescription '-' '_'   012 ("4E") (Codes "0C" "8C")

  Key_Equals              -> shiftableKeyDescription '=' '+'   013 ("55") (Codes "0D" "8D")

  Key_Backspace           -> unprintableKeyDescription         005 ("66") (Codes "0E" "8E")

  Key_Tab                 -> unprintableKeyDescription         006 ("0D") (Codes "0F" "8F")

  Key_Q                   -> letterKeyDescription 'q'          017 ("15") (Codes "10" "90")

  Key_W                   -> letterKeyDescription 'w'          018 "1D" (Codes "11" "91")

  Key_E                   -> letterKeyDescription 'e'          019 "24" (Codes "12" "92")

  Key_R                   -> letterKeyDescription 'r'          020 "2D" (Codes "13" "93")

  Key_T                   -> letterKeyDescription 't'          021 "2C" (Codes "14" "94")

  Key_Y                   -> letterKeyDescription 'y'          022 "35" (Codes "15" "95")

  Key_U                   -> letterKeyDescription 'u'          023 "3C" (Codes "16" "96")

  Key_I                   -> letterKeyDescription 'i'          024 "43" (Codes "17" "97")

  Key_O                   -> letterKeyDescription 'o'          025 "44" (Codes "18" "98")

  Key_P                   -> letterKeyDescription 'p'          026 "4D" (Codes "19" "99")

  Key_OpenSquareBracket   -> shiftableKeyDescription '[' '{'   027 ("54") (Codes "1A" "9A")

  Key_ClosedSquareBracket -> shiftableKeyDescription ']' '}'   028 ("5B") (Codes "1B" "9B")

  Key_CapsLock            -> modifierKeyDescription            030 "58" (Codes "3A" "BA")

  Key_A                   -> letterKeyDescription 'a'          031 "1C" (Codes "1E" "9E")

  Key_S                   -> letterKeyDescription 's'          032 "1B" (Codes "1F" "9F")

  Key_D                   -> letterKeyDescription 'd'          033 "23" (Codes "20" "A0")

  Key_F                   -> letterKeyDescription 'f'          034 "2B" (Codes "21" "A1")

  Key_G                   -> letterKeyDescription 'g'          035 "34" (Codes "22" "A2")

  Key_H                   -> letterKeyDescription 'h'          036 "33" (Codes "23" "A3")

  Key_J                   -> letterKeyDescription 'j'          037 "3B" (Codes "24" "A4")

  Key_K                   -> letterKeyDescription 'k'          038 "42" (Codes "25" "A5")

  Key_L                   -> letterKeyDescription 'l'          039 "4B" (Codes "26" "A6")

  Key_Semicolon           -> shiftableKeyDescription ';' ':'   040 ("4C") (Codes "27" "A7")

  Key_Apostrophe          -> shiftableKeyDescription '\'' '"'  041 ("52") (Codes "28" "A8")

  Key_Enter               -> printableKeyDescription '\n'      043 ("5A") (Codes "1C" "9C")

  Key_Left_Shift          -> toKeyDescription2                 000 ""

  Key_Z                   -> letterKeyDescription 'z'          046 "1A" (Codes "2C" "AC")

  Key_X                   -> letterKeyDescription 'x'          047 "22" (Codes "2D" "AD")

  Key_C                   -> letterKeyDescription 'c'          048 "21" (Codes "2E" "AE")

  Key_V                   -> letterKeyDescription 'v'          049 "2A" (Codes "2F" "AF")

  Key_B                   -> letterKeyDescription 'b'          050 "32" (Codes "30" "B0")

  Key_N                   -> letterKeyDescription 'n'          051 "31" (Codes "31" "B1")

  Key_M                   -> letterKeyDescription 'm'          052 "3A" (Codes "32" "B2")

  Key_Comma               -> shiftableKeyDescription ',' '<'   053 ("41") (Codes "33" "B3")

  Key_Period              -> shiftableKeyDescription '.' '>'   054 ("49") (Codes "34" "B4")

  Key_Slash               -> shiftableKeyDescription '/' '?'   055 ("4A") (Codes "35" "B5")

  Key_Right_Shift         -> toKeyDescription2  000 ""

  Key_Left_Ctrl           -> KeyDescription

                                 { number      = 058
                                 , character   = Unprintable
                                 , twinKeys    = def
                                 , isModifier  = YesModifier
                                 , isNumpad    = def
                                 , side        = def
                                 , codes1      = Codes { pressCode   = "1D"
                                                       , releaseCode = "9D"
                                                       }
                                 , codes2      = regularCode "14"
                                 , codes3      = regularCode "11"
                                 }
  
  Key_Left_Alt            -> KeyDescription

                                 { number      = 060
                                 , character   = Unprintable
                                 , twinKeys    = def
                                 , isModifier  = YesModifier
                                 , isNumpad    = def
                                 , side        = def
                                 , codes1      = Codes { pressCode   = "38"
                                                       , releaseCode = "B8"
                                                       }
                                 , codes2      = regularCode "11"
                                 , codes3      = regularCode "19"
                                 }
  
  Key_Spacebar            -> printableKeyDescription ' ' 061 ("29") (Codes 

  Key_Right_Alt           -> toKeyDescription2  000 ""

  Key_Right_Ctrl          -> toKeyDescription2  000 ""

  Key_Insert              -> toKeyDescription2  000 ""

  Key_Delete              -> toKeyDescription2  000 ""

  Key_ArrowLeft           -> toKeyDescription2  000 ""

  Key_Home                -> toKeyDescription2  000 ""

  Key_End                 -> toKeyDescription2  000 ""

  Key_ArrowUp             -> toKeyDescription2  000 ""

  Key_ArrowDown           -> toKeyDescription2  000 ""

  Key_PageUp              -> toKeyDescription2  000 ""

  Key_PageDown            -> toKeyDescription2  000 ""

  Key_ArrowRight          -> toKeyDescription2  000 ""

  Key_NumLock             -> toKeyDescription2  000 ""

  Key_KeyPad_7            -> toKeyDescription2  000 ""

  Key_KeyPad_4            -> toKeyDescription2  000 ""

  Key_KeyPad_1            -> toKeyDescription2  000 ""
 
  Key_KeyPad_Divide       -> toKeyDescription2  000 ""

  Key_KeyPad_8            -> toKeyDescription2  000 ""

  Key_KeyPad_5            -> toKeyDescription2  000 ""

  Key_KeyPad_2            -> toKeyDescription2  000 ""

  Key_KeyPad_0            -> toKeyDescription2  000 ""

  Key_KeyPad_Multiply     -> toKeyDescription2  000 ""

  Key_KeyPad_9            -> toKeyDescription2  000 ""

  Key_KeyPad_6            -> toKeyDescription2  000 ""

  Key_KeyPad_3            -> toKeyDescription2  000 ""

  Key_KeyPad_Decimal      -> toKeyDescription2  000 ""

  Key_KeyPad_Subtract     -> toKeyDescription2  000 ""

  Key_KeyPad_Add          -> toKeyDescription2  000 ""

  Key_KeyPad_Enter        -> toKeyDescription2  000 ""

  Key_Esc                 ->  KeyDescription

                                 { number      = 110
                                 , character   = Unprintable
                                 , twinKeys    = def
                                 , isModifier  = def
                                 , isNumpad    = def
                                 , side        = def
                                 , codes1      = Codes { pressCode   = "01"
                                                       , releaseCode = "81"
                                                       }
                                 , codes2      = regularCode "76"
                                 , codes3      = regularCode "08"
                                 }

  Key_F1                  -> toKeyDescription2  000 ""

  Key_F2                  -> toKeyDescription2  000 ""

  Key_F3                  -> toKeyDescription2  000 ""

  Key_F4                  -> toKeyDescription2  000 ""

  Key_F5                  -> toKeyDescription2  000 ""

  Key_F6                  -> toKeyDescription2  000 ""

  Key_F7                  -> toKeyDescription2  000 ""

  Key_F8                  -> toKeyDescription2  000 ""

  Key_F9                  -> toKeyDescription2  000 ""

  Key_F10                 -> toKeyDescription2  000 ""

  Key_F11                 -> toKeyDescription2  000 ""

  Key_F12                 -> toKeyDescription2  000 ""

  Key_PrintScreen         -> toKeyDescription2  000 ""

  Key_ScrollLock          -> toKeyDescription2  000 ""

  Key_PauseBreak          -> toKeyDescription2  000 ""

  Key_Backslash           -> toKeyDescription2  000 ""

--------------------------------------------------

{-|

The @PS2@ scan-codes for an "regular" unprintable key (e.g. for control characters).

e.g.

@
'unprintableKeyDescription' 005 ("66") (Codes "0E" "8E")
@

-}

unprintableKeyDescription
  :: Natural
  -> Code
  -> Codes
  -> KeyDescription

unprintableKeyDescription number code23 codes1
  = KeyDescription{..}

  where

  character  = Unprintable
  twinKeys   = []
  isModifier = NotModifier
  isNumpad   = NotNumpad
  side       = Nothing
  codes2     = codes
  codes3     = codes

  codes      = regularCode code23 

--------------------------------------------------

{-|

The @PS2@ scan-codes for a "regular" character key.

e.g.

@
'printableKeyDescription' \'\n\' 043 \"5A\" (Codes \"1C\" \"9C\")
@

-}

printableKeyDescription
  :: Char
  -> Natural
  -> Code
  -> Codes
  -> KeyDescription

printableKeyDescription char number code23 codes1
  = KeyDescription{..}

  where

  character  = Printable char
  twinKeys   = []
  isModifier = NotModifier
  isNumpad   = NotNumpad
  side       = Nothing
  codes2     = codes
  codes3     = codes

  codes      = regularCode code23 

--------------------------------------------------

{-|

The @PS2@ scan-codes for a "regular" character key; representing a pair of characters
that are the unshifted and @Shift@ed versions (respectively) of the same physical keys.

e.g.

@
'shiftableKeyDescription' \'1\' \'!\' 002 \"16\" (Codes \"02\" \"82\")
@

-}

shiftableKeyDescription
  :: Char
  -> Char
  -> Natural
  -> Code
  -> Codes
  -> KeyDescription

shiftableKeyDescription basecase uppercase number code23 codes1
  = KeyDescription{..}

  where

  character  = Shiftable basecase uppercase
  twinKeys   = []
  isModifier = NotModifier
  isNumpad   = NotNumpad
  side       = Nothing
  codes2     = codes
  codes3     = codes

  codes      = regularCode code23 

--------------------------------------------------

{-|

The @PS2@ scan-codes for a "regular" letter key.

e.g.

@
'letterKeyDescription' \'w\' 018 \"1D\" (Codes \"11\" \"91\")
@

-}

letterKeyDescription
  :: Char
  -> Natural
  -> Code
  -> Codes
  -> KeyDescription

letterKeyDescription letter number code23 codes1
  = KeyDescription{..}

  where

  character  = Shiftable letter (toUpper letter)
  twinKeys   = []
  isModifier = NotModifier
  isNumpad   = NotNumpad
  side       = Nothing
  codes2     = codes
  codes3     = codes

  codes      = regularCode code23 

--------------------------------------------------

{-|

The @PS2@ scan-codes for a "regular", "extension" key;
i.e. whose scancodes have this form:

@
'KeyDescription'
  { ...
  , codes2 = Codes { pressCode   =    "0E"
                   , releaseCode = "F0 0E"
                   }
  , ...
  }
@

i.e.  'codes2' field) 

e.g.

@
'regularExtensionKeyDescription' 
@

-}

regularExtensionKeyDescription
  :: Char
  -> Natural
  -> Code
  -> Codes
  -> KeyDescription

regularExtensionKeyDescription letter number code23 codes1
  = KeyDescription{..}

  where

  character  = Shiftable letter (toUpper letter)
  twinKeys   = []
  isModifier = NotModifier
  isNumpad   = NotNumpad
  side       = Nothing
  codes2     = codes
  codes3     = codes

  codes      = regularCode code23 

--------------------------------------------------

{-|

only the @Set2@ scan-codes.

-}

toKeyDescription2
  :: Natural
  -> Code
  -> KeyDescription

toKeyDescription2 number code
  = KeyDescription{..}

  where

  twinKeys   = []
  character  = def
  isModifier = def
  isNumpad   = def
  side       = Nothing
  codes1     = Codes "" ""               -- TODO 
  codes2     = codes
  codes3     = codes

  codes      = regularCode code

--------------------------------------------------

-- {-|

-- -}

-- regularKeyDescription
--   :: Key
--   -> Natural
--   -> Codes
--   -> Code
--   -> KeyDescription

-- regularKeyDescription key number codes1 code
--   = KeyDescription{..}

--   where

--   isNumpad   = NotNumpad
--   codes2     = codes
--   codes3     = codes

--   codes      = regularCode code

--------------------------------------------------

{-|

-}

regularCode :: Code -> Codes
regularCode pressCode = Codes{..}
  where
  releaseCode = "F0" <> pressCode

--------------------------------------------------
{-

-------------------------
e.g.

  Key_Backtick -> KeyDescription

    { number      = 001
    , character   = Shiftable '`' '~'
    , twinKeys    = def
    , isModifier  = def
    , isNumpad    = def
    , side        = def
    , codes1      = Codes { pressCode   = "29"
                          , releaseCode = "A9"
                          }
    , codes2      = Codes { pressCode   =    "0E"
                          , releaseCode = "F0 0E"
                          }
    , codes3      = Codes { pressCode   =    "0E"
                          , releaseCode = "F0 0E"
                          }
    }

-------------------------
template

  KeyDescription

    { number      = $1
    , character   = $0
    , twinKeys    = def
    , isModifier  = def
    , isNumpad    = def
    , side        = def
    , codes1      = Codes { pressCode   = "_"
                          , releaseCode = "_"
                          }
    , codes2      = Codes { pressCode   =    "$2"
                          , releaseCode = "F0 $2"
                          }
    , codes3      = Codes { pressCode   =    "$2"
                          , releaseCode = "F0 $2"
                          }
    }

-------------------------
e.g.

  KeyDescription

    { key         = Key_Backtick
    , twinKeys    = []
    , number      = 001
    , character   = Shiftable '`' '~'
    , isModifier  = def
    , isNumpad    = def
    , side        = def
    , codes1      = Codes { pressCode   = "29"
                          , releaseCode = "A9"
                          }
    , codes2      = Codes { pressCode   =    "0E"
                          , releaseCode = "F0 0E"
                          }
    , codes3      = Codes { pressCode   =    "0E"
                          , releaseCode = "F0 0E"
                          }
    }

-------------------------
e.g.

 KeyDescription

                                 { number      = 17
                                 , character   = Shiftable 'q' 'Q'
                                 , twinKeys    = def
                                 , isModifier  = def
                                 , isNumpad    = def
                                 , side        = def
                                 , codes1      = Codes { pressCode   = "10"
                                                       , releaseCode = "90"
                                                       }
                                 , codes2      = Codes { pressCode   =    "15"
                                                       , releaseCode = "F0 15"
                                                       }
                                 , codes3      = Codes { pressCode   =    "15"
                                                       , releaseCode = "F0 15"
                                                       }
                                 }

  Key_W                   -> lett

-------------------------


-------------------------

-}
--------------------------------------------------