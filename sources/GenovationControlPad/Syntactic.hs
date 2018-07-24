{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

--------------------------------------------------

module GenovationControlPad.Syntactic where

--------------------------------------------------

import "sprios" Prelude.Spiros

--------------------------------------------------

data DeviceConfig a = DeviceConfig
 { numberOfKeys :: Natural
 , keys         :: [KeyConfig a]
 }

--------------------------------------------------

--------------------------------------------------

data KeyConfig a = KeyConfig
 { name             :: KeyName
 , level            :: Level
 , config           :: KeyConfig' a
 }

newtype KeyName = KeyName { fromKeyName ::
 Natural
 }

data KeyConfig' a = KeyConfig'
 { autoRepetition   :: AutoRepeat
 , mode             :: Mode
 , macro            :: Macro
 , description      :: a
 }

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

--------------------------------------------------

data Level
 = LevelOne
 | LevelTwo

data AutoRepeat
 = DoAutoRepeat
 | NoAutoRepeat

data Mode
 = DefaultMode

--------------------------------------------------

newtype Macro = Macro { fromMacro :: 
 [Event]
 }

--------------------------------------------------

data Event
 = KeyEvent      Key
 | ModifierEvent ModifierToggle
 | CommandEvent  Delay

--------------------------------------------------

data Key
 = A_Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key
 | _Key

--------------------------------------------------

data ModifierToggle = ModifierToggle
 { modifier  :: Modifier
 , direction :: Direction
 , position  :: Position
 }

data Direction
 = PressDown
 | ReleaseUp

data Position
 = RightSide
 | LeftSide

data Modifier
 = Ctrl_Modifier
 | Alt_Modifier
 | Shift_Modifier
 | Win_Modifier

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