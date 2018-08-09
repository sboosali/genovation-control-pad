{-# LANGUAGE OverloadedStrings     #-}

--------------------------------------------------

{-|


===

e.g.

@
:set -XOverloadedStrings
import qualified "yaml" Data.Yaml as Y

yamlScanCodes <- Y.decodeFileThrow "./documents/PS2_Keyboard_ScanCodes.yaml" :: IO Y.Value
Y.encodeFile "./temporary/PS2_Keyboard_ScanCodes.yaml" yamlScanCodes

@

===

-}

module ScanCodes.PS2 where

--------------------------------------------------

import Prelude_scan_codes

--------------------------------------------------

--import qualified "yaml" Data.Yaml as Y

--------------------------------------------------

{-|

-}

--------------------------------------------------

{-|

-}

--------------------------------------------------