{-# LANGUAGE OverloadedStrings     #-}

--------------------------------------------------

{-|

===

===

-}

module ScanCodes.Values where

--------------------------------------------------

import Prelude_scan_codes

--------------------------------------------------

import ScanCodes.Types

--------------------------------------------------
--------------------------------------------------

{-|

-}

describeKey :: Key -> KeyDescription
describeKey = \case

  Key_Backtick -> KeyDescription

    { key        = Key_Backtick
    , number     = 001
    , isNumpad   = def
    , codes1     = Codes { pressCode   = "29"
                         , releaseCode = "A9"
                         }
    , codes2     = Codes { pressCode   =    "0E"
                         , releaseCode = "F0 0E"
                         }
    , codes3     = Codes { pressCode   =    "0E"
                         , releaseCode = "F0 0E"
                         }
    }

  Key_1                   -> toKeyDescription2 Key_1                   002 "16"

  Key_2                   -> toKeyDescription2 Key_2                   003 "1E"

  Key_3                   -> toKeyDescription2 Key_3                   004 "26"

  Key_4                   -> toKeyDescription2 Key_4                   005 "25"

  Key_5                   -> toKeyDescription2 Key_5                   006 "2E"

  Key_6                   -> toKeyDescription2 Key_6                   007 "36"

  Key_7                   -> toKeyDescription2 Key_7                   008 "3D"

  Key_8                   -> toKeyDescription2 Key_8                   009 "3E"

  Key_9                   -> toKeyDescription2 Key_9                   010 "46"

  Key_0                   -> toKeyDescription2 Key_0                   011 "45"

  Key_Hyphen              -> toKeyDescription2 Key_Hyphen              000 ""

  Key_Equals              -> toKeyDescription2 Key_Equals              000 ""

  Key_Backspace           -> toKeyDescription2 Key_Backspace           000 ""

  Key_Tab                 -> toKeyDescription2 Key_Tab                 000 ""

  Key_Q                   -> toKeyDescription2 Key_Q                   000 ""

  Key_W                   -> toKeyDescription2 Key_W                   000 ""

  Key_E                   -> toKeyDescription2 Key_E                   000 ""

  Key_R                   -> toKeyDescription2 Key_R                   000 ""

  Key_T                   -> toKeyDescription2 Key_T                   000 ""

  Key_Y                   -> toKeyDescription2 Key_Y                   000 ""

  Key_U                   -> toKeyDescription2 Key_U                   000 ""

  Key_I                   -> toKeyDescription2 Key_I                   000 ""

  Key_O                   -> toKeyDescription2 Key_O                   000 ""

  Key_P                   -> toKeyDescription2 Key_P                   000 ""

  Key_OpenSquareBracket   -> toKeyDescription2 Key_OpenSquareBracket   000 ""

  Key_ClosedSquareBracket -> toKeyDescription2 Key_ClosedSquareBracket 000 ""

  Key_CapsLock            -> toKeyDescription2 Key_CapsLock            000 ""

  Key_A                   -> toKeyDescription2 Key_A                   000 ""

  Key_S                   -> toKeyDescription2 Key_S                   000 ""

  Key_D                   -> toKeyDescription2 Key_D                   000 ""

  Key_F                   -> toKeyDescription2 Key_F                   000 ""

  Key_G                   -> toKeyDescription2 Key_G                   000 ""

  Key_H                   -> toKeyDescription2 Key_H                   000 ""

  Key_J                   -> toKeyDescription2 Key_J                   000 ""

  Key_K                   -> toKeyDescription2 Key_K                   000 ""

  Key_L                   -> toKeyDescription2 Key_L                   000 ""

  Key_Semicolon           -> toKeyDescription2 Key_Semicolon           000 ""

  Key_Apostrophe          -> toKeyDescription2 Key_Apostrophe          000 ""

  Key_Enter               -> toKeyDescription2 Key_Enter               000 ""

  Key_Left_Shift          -> toKeyDescription2 Key_Left_Shift          000 ""

  Key_Z                   -> toKeyDescription2 Key_Z                   000 ""

  Key_X                   -> toKeyDescription2 Key_X                   000 ""

  Key_C                   -> toKeyDescription2 Key_C                   000 ""

  Key_V                   -> toKeyDescription2 Key_V                   000 ""

  Key_B                   -> toKeyDescription2 Key_B                   000 ""

  Key_N                   -> toKeyDescription2 Key_N                   000 ""

  Key_M                   -> toKeyDescription2 Key_M                   000 ""

  Key_Comma               -> toKeyDescription2 Key_Comma               000 ""

  Key_Period              -> toKeyDescription2 Key_Period              000 ""

  Key_Slash               -> toKeyDescription2 Key_Slash               000 ""

  Key_Right_Shift         -> toKeyDescription2 Key_Right_Shift         000 ""

  Key_Left_Ctrl           -> toKeyDescription2 Key_Left_Ctrl           000 ""
  
  Key_Left_Alt            -> toKeyDescription2 Key_Left_Alt            000 ""

  Key_Spacebar            -> toKeyDescription2 Key_Spacebar            000 ""

  Key_Right_Alt           -> toKeyDescription2 Key_Right_Alt           000 ""

  Key_Right_Ctrl          -> toKeyDescription2 Key_Right_Ctrl          000 ""

  Key_Insert              -> toKeyDescription2 Key_Insert              000 ""

  Key_Delete              -> toKeyDescription2 Key_Delete              000 ""

  Key_ArrowLeft           -> toKeyDescription2 Key_ArrowLeft           000 ""

  Key_Home                -> toKeyDescription2 Key_Home                000 ""

  Key_End                 -> toKeyDescription2 Key_End                 000 ""

  Key_ArrowUp             -> toKeyDescription2 Key_ArrowUp             000 ""

  Key_ArrowDown           -> toKeyDescription2 Key_ArrowDown           000 ""

  Key_PageUp              -> toKeyDescription2 Key_PageUp              000 ""

  Key_PageDown            -> toKeyDescription2 Key_PageDown            000 ""

  Key_ArrowRight          -> toKeyDescription2 Key_ArrowRight          000 ""

  Key_NumLock             -> toKeyDescription2 Key_NumLock             000 ""

  Key_KeyPad_7            -> toKeyDescription2 Key_KeyPad_7            000 ""

  Key_KeyPad_4            -> toKeyDescription2 Key_KeyPad_4            000 ""

  Key_KeyPad_1            -> toKeyDescription2 Key_KeyPad_1            000 ""

  Key_KeyPad_Divide       -> toKeyDescription2 Key_KeyPad_Divide       000 ""

  Key_KeyPad_8            -> toKeyDescription2 Key_KeyPad_8            000 ""

  Key_KeyPad_5            -> toKeyDescription2 Key_KeyPad_5            000 ""

  Key_KeyPad_2            -> toKeyDescription2 Key_KeyPad_2            000 ""

  Key_KeyPad_0            -> toKeyDescription2 Key_KeyPad_0            000 ""

  Key_KeyPad_Multiply     -> toKeyDescription2 Key_KeyPad_Multiply     000 ""

  Key_KeyPad_9            -> toKeyDescription2 Key_KeyPad_9            000 ""

  Key_KeyPad_6            -> toKeyDescription2 Key_KeyPad_6            000 ""

  Key_KeyPad_3            -> toKeyDescription2 Key_KeyPad_3            000 ""

  Key_KeyPad_Decimal      -> toKeyDescription2 Key_KeyPad_Decimal      000 ""

  Key_KeyPad_Subtract     -> toKeyDescription2 Key_KeyPad_Subtract     000 ""

  Key_KeyPad_Add          -> toKeyDescription2 Key_KeyPad_Add          000 ""

  Key_KeyPad_Enter        -> toKeyDescription2 Key_KeyPad_Enter        000 ""

  Key_Esc                 -> toKeyDescription2 Key_Esc                 000 ""

  Key_F1                  -> toKeyDescription2 Key_F1                  000 ""

  Key_F2                  -> toKeyDescription2 Key_F2                  000 ""

  Key_F3                  -> toKeyDescription2 Key_F3                  000 ""

  Key_F4                  -> toKeyDescription2 Key_F4                  000 ""

  Key_F5                  -> toKeyDescription2 Key_F5                  000 ""

  Key_F6                  -> toKeyDescription2 Key_F6                  000 ""

  Key_F7                  -> toKeyDescription2 Key_F7                  000 ""

  Key_F8                  -> toKeyDescription2 Key_F8                  000 ""

  Key_F9                  -> toKeyDescription2 Key_F9                  000 ""

  Key_F10                 -> toKeyDescription2 Key_F10                 000 ""

  Key_F11                 -> toKeyDescription2 Key_F11                 000 ""

  Key_F12                 -> toKeyDescription2 Key_F12                 000 ""

  Key_PrintScreen         -> toKeyDescription2 Key_PrintScreen         000 ""

  Key_ScrollLock          -> toKeyDescription2 Key_ScrollLock          000 ""

  Key_PauseBreak          -> toKeyDescription2 Key_PauseBreak          000 ""

  Key_Backslash           -> toKeyDescription2 Key_Backslash           000 ""

--------------------------------------------------



--------------------------------------------------

{-|

only the @Set2@ scan-codes.

-}

toKeyDescription2
  :: Key
  -> Natural
  -> Code
  -> KeyDescription

toKeyDescription2 key number code
  = KeyDescription{..}

  where

  isNumpad   = NotNumpad
  codes1     = Codes "" ""               -- TODO 
  codes2     = codes
  codes3     = codes

  codes      = regularCode code

--------------------------------------------------

{-|

-}

regularKeyDescription
  :: Key
  -> Natural
  -> Codes
  -> Code
  -> KeyDescription

regularKeyDescription key number codes1 code
  = KeyDescription{..}

  where

  isNumpad   = NotNumpad
  codes2     = codes
  codes3     = codes

  codes      = regularCode code

--------------------------------------------------

{-|

-}

regularCode :: Code -> Codes
regularCode pressCode = Codes{..}
  where
  releaseCode = "F0" <> pressCode

--------------------------------------------------
{-



= KeyDescription{..}
  where
  key        = _
  number = _
  isNumpad   = _
  codes1     = _
  codes2     = _
  codes3     = _



data KeyDescription = KeyDescription

  { key        :: Key           -- ^ 
  , number     :: Natural       -- ^ 
  , isNumpad   :: IsNumpad      -- ^ 
  , codes1     :: Codes         -- ^ 
  , codes2     :: Codes         -- ^ 
  , codes3     :: Codes         -- ^ 
  }

-}
--------------------------------------------------