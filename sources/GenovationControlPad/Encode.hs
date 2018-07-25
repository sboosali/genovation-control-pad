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

import           "base"   Prelude        (toEnum)

--------------------------------------------------

type Encoder a = (a -> Text)

--------------------------------------------------

{-|

@
>>> fromDelay Delay008ms
8
@

e.g.

@
(4 * (('fromEnum' 'Delay012ms') + 1))
(4 * (2 + 1))
(4 * 3)
(12)
@

-}
fromDelay :: Delay -> Int -- Natural -- fromIntegral (
fromDelay x =
  (fromEnum x + 1) * 4

{-| Convert a number of milliseconds into its equivalent 'Delay'. Inputs that aren't a mulitple-of-4 are rounded-up. @Nothing@ when out-of-bounds.

@
'fromDelay' >>> 'toDelay'  'Just'
@

@
>>> toDelay 0
Nothing
>>> toDelay `traverse` [1,2,3,4]
Just [Delay004ms,Delay004ms,Delay004ms,Delay004ms]
>>> toDelay 5
Just Delay008ms
>>> toDelay 499
Just Delay500ms
>>> toDelay 501
Nothing
@

-}
toDelay :: Int -> Maybe Delay
toDelay
  = checkBounds
  > fmap ( divideByFourRoundingDown
         > toEnum
         )
         -- `toEnum` is total,
         -- when `checkBounds` is `Just`.
  
  where
  divideByFourRoundingDown i = (i - 1) `quot` 4

  checkBounds j
    | (j >= 1) && (j <= 500) = Just j 
    | otherwise              = Nothing

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