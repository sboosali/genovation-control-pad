{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

--------------------------------------------------

module GenovationControlPad.Syntactic where

--------------------------------------------------

import "sprios" Prelude.Spiros

--------------------------------------------------

data ValidKeyConfig' a = ValidKeyConfig'
 { autoRepetition   :: AutoRepeat
 , mode             :: Mode
 , macro            :: ValidMacro
 , description      :: a
 }

data ValidKeyConfig a = ValidKeyConfig
 { levelOne ::        ValidKeyConfig' a
 , levelTwo :: Maybe (ValidKeyConfig' a)
 }

newtype ValidMacro = ValidMacro { fromValidMacro ::
 Macro
 }

--------------------------------------------------

newtype Macro = Macro { fromMacro :: 
 [Event]
 }

data ModifierToggle = ModifierToggle
 { modifier  :: Modifier
 , direction :: Direction
 , position  :: Position
 }

--------------------------------------------------

data Delay
 = Delay Natural

--------------------------------------------------

defaultModifierToggle :: Modifier -> ModifierToggle
defaultModifierToggle modifier = ModifierToggle{..}
 where
 direction = PressDown
 position  = RightSide

--------------------------------------------------

validateDeviceConfig
 :: DeviceConfig a
 -> Either String (ValidDeviceConfig a)
validateDeviceConfig DeviceConfig{..} = Left "TODO"

--------------------------------------------------

serializeKeyConfig
 :: (a -> Text)
 -> KeyConfig a
 -> Text
serializeKeyConfig = todo

serializeMacro
 :: Macro
 -> Text
serializeMacro = todo

serializeEvent
 :: Macro
 -> Text
serializeEvent = todo

--------------------------------------------------



--------------------------------------------------
{- NOTES

 = AutoRepeatOn
 | AutoRepeatOff

-}