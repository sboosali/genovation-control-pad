{-# LANGUAGE OverloadedStrings     #-}

--------------------------------------------------

{-|

===

@
"./data/PS2-ScanCodes.yaml"
@

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
  } deriving newtype (Show,Eq,Ord)

-------------------------

instance J.FromJSON KeyDescriptionJSON where
  parseJSON = coerce (J.withObject "Key" pDescription)
    where
      
    pDescription o = KeyDescription
    
      <$> o J..: "id"
      <*> pCharacter o
      <*> (pure def)
      <*> (pure def)
      <*> pKeypad o
      <*> (pure def)
      <*> pCodes "set1" o
      <*> pCodes "set2" o
      <*> pCodes "set3" o

    pCharacter o = do
      basecase  <- o J..:  "basecase"
      uppercase <- o J..:? "uppercase"
      let characters = toCharacters basecase uppercase
      return characters

    toCharacters :: String -> Maybe String -> KeyCharacter
    toCharacters [x] Nothing    = Printable x
    toCharacters [x] (Just [y]) = Shiftable x y
    toCharacters _   _          = Unprintable

    pKeypad o = do
      x <- o J..:? "keypad"
      let y = toKeypad x
      return y

    toKeypad = \case
      Nothing    -> def
      Just False -> NotNumpad
      Just True  -> YesNumpad

    pCodes k o1 = do
      v1 <- o1 J..: k
      codes <- J.withObject (toS k) pCodes' v1
      return codes

    pCodes' o2 = do
        makeCode  <- o2 J..: "make"
        breakCode <- o2 J..: "break"
        let pressCode   = Code makeCode
        let releaseCode = Code breakCode
        return Codes{..}

--------------------------------------------------

{-

      let isNumpad = x & maybe def (\case
                                       )


newtype KeyCharacterJSON = KeyCharacterJSON
  { toKeyCharacter
    :: KeyCharacter
  } deriving newtype (Show,Eq,Ord)

-------------------------

instance J.FromJSON KeyCharacterJSON where
  parseJSON = coerce (J.withObject "KeyCharacter" go)
    where
    go o = pure Unprintable

-}

--------------------------------------------------