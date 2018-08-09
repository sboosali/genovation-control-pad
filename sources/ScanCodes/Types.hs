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


===

@"PS/2"@ abbreviates "Personal System/2".

===


-}
data PS2Key
  = PS2_

--------------------------------------------------

{-|

-}
data ScanCode

--------------------------------------------------
--------------------------------------------------