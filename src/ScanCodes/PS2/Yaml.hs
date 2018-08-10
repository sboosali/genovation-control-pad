{-# LANGUAGE OverloadedStrings     #-}

--------------------------------------------------

{-|

===

===

-}

module ScanCodes.PS2.Yaml where

--------------------------------------------------

import Prelude_scan_codes

import ScanCodes.PS2.Types
--import ScanCodes.PS2.Keys

--------------------------------------------------

import qualified "yaml"  Data.Yaml  as Y
import qualified "aeson" Data.Aeson as J

--------------------------------------------------
--------------------------------------------------

{-| A 'KeyDescription'-@newtype@,
for a particular @JSON@(\/@YAML@) format.

-}
newtype KeyDescriptionJSON = KeyDescriptionJSON
  { toKeyDescription
    :: KeyDescription
  }
  deriving stock    (Show,Read,Lift,Generic)
  deriving newtype  (Eq,Ord)
  deriving newtype  (NFData,Hashable)

-------------------------

instance J.FromJSON KeyDescriptionJSON where
  parseJSON = coerce (J.withObject "KeyDescription" go)
    where
    go o = KeyDescription
      <$> o J..: "key"
      <*> o J..: "number"
      <*> o J..: "character"
      <*> o J..: "twinKeys"
      <*> o J..: "isModifier"
      <*> o J..: "isNumpad"
      <*> o J..: "side"
      <*> o J..: "codes1"
      <*> o J..: "codes2"
      <*> o J..: "codes3"

--------------------------------------------------



--------------------------------------------------