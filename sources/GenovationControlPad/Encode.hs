{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

--------------------------------------------------

{-|

-}
module GenovationControlPad.Encode where

import GenovationControlPad.Types

--------------------------------------------------

import qualified "text" Data.Text.Lazy as T

--------------------------------------------------

import           "spiros" Prelude.Spiros
--TODO import qualified "spiros" Spiros.Text as T

--------------------------------------------------

type Encoder a = (a -> Text)

--------------------------------------------------

encodeEvents :: Encoder Events
encodeEvents = \case
 Events es -> (es <&> encodeEvent) & T.concat

--------------------------------------------------

encodeEvent :: Encoder Event
encodeEvent = \case
 KeyEvent      x -> encodeKey            x
 ModifierEvent x -> encodeModifierToggle x
 ActionEvent   x -> encodeAction         x

--------------------------------------------------

encodeModifierToggle :: Encoder ModifierToggle
encodeModifierToggle ModifierToggle{..}
   = encodeDirection direction
  <> encodeModifier  modifier

--------------------------------------------------

encodeModifier :: Encoder Modifier
encodeModifier = \case
 ModifierCtrl       -> "14"
 ModifierAlt        -> "11"
 ModifierShift      -> "12"
 ModifierWin        -> ""
 ModifierRightCtrl  -> ""
 ModifierRightAlt   -> ""
 ModifierRightShift -> ""

--------------------------------------------------

encodeDirection :: Encoder Direction
encodeDirection = \case
  PressDown -> ""
  ReleaseUp -> "f0"

--------------------------------------------------

encodeKey :: Encoder Key
encodeKey = \case
  KeyA -> ""
  _ -> ""

--------------------------------------------------

encodeAction :: Encoder Action
encodeAction = \case
  DelayAction delay -> "e2 01" <> encodeDelay delay

--------------------------------------------------

encodeDelay :: Encoder Delay
encodeDelay = \case
 Delay004ms -> "01"
 Delay500ms -> "7d"
 _ -> ""

--------------------------------------------------


--------------------------------------------------



--------------------------------------------------




--------------------------------------------------