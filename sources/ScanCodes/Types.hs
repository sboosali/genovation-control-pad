{-# LANGUAGE OverloadedStrings     #-}

{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

--------------------------------------------------

{-|

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


===

@"PS/2"@ abbreviates "Personal System/2".

===


-}

data Key

  = Key
  
  deriving stock    (Eq,Ord,Show,Read,Lift,Generic)
  deriving anyclass (NFData,Hashable)

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
--------------------------------------------------
{-



data KeyCharacters
  = PrintableKey
  | UnprintableKey


{-|

-}

data ScanCode



-}
--------------------------------------------------
--------------------------------------------------