{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

--------------------------------------------------

{-| 

-}
module GenovationControlPad.Types where

--------------------------------------------------

import "spiros" Prelude.Spiros

--------------------------------------------------

{-| 

-}
data DeviceConfig a = DeviceConfig
 { numberOfKeys :: KeyCount
 , config       :: DeviceConfig'
 , keys         :: [KeyConfig a]
 }

--------------------------------------------------

{-| The "keypad properties" that configure the device as a whole.

-}
data DeviceConfig' = DeviceConfig'
 { rollover :: KeyRollover
 , pacing   :: CharacterPacing
 , modes    :: LEDModes
 }

--------------------------------------------------

{-| This many keys may be pressed down simultaneously.

e.g. @KeyRollover 3@ means:
Two keys, or three keys, may be pressed down simultaneously. 
(Trivially, one key may always be pressed down "simultaneously")

-}
newtype KeyRollover = KeyRollover
 { fromKeyRollover ::
   Natural
 }

{-| Two keys.

-}
defaultKeyRollover :: KeyRollover
defaultKeyRollover = KeyRollover 2

--------------------------------------------------

{-| Time between characters, in milliseconds.

e.g. @CharacterPacing 2@ means:
After each keypress 'Event' (i.e. a 'KeyEvent' or 'ModifierEvent'),
wait two milliseconds before the next event.

-}
newtype CharacterPacing = CharacterPacing
 { fromCharacterPacing ::
   Natural
 }

{-| Two milliseconds.

-}
defaultCharacterPacing :: CharacterPacing
defaultCharacterPacing = CharacterPacing 2

----------------------------------------

{-| 

-}
data LEDModes = LEDModes
 { first  :: LEDMode
 , second :: LEDMode
 , third  :: LEDMode
 }

----------------------------------------

{-| 

-}
data LEDMode
 = LEDNotUsed
 | LEDCapsLock
 | LEDNumLock
 | LEDScrollLock
 | LEDLevelIndicator
 | LEDPowerIndicator
 | LEDControlByHostOrMacro

defaultLEDMode :: LEDMode
defaultLEDMode = LEDNotUsed

--------------------------------------------------

{-| How many keys does the keypad have?

-}
data KeyCount
  = CP24 -- ^ the @"Genovation ControlPad CP24"@.
  | CP48 -- ^ the @"Genovation ControlPad CP48"@.

--------------------------------------------------

{-| Keys are identified by their position on the grid,
in the expected (for western languages) reading order,
i.e. left-to-right then top-to-bottom.

The 'CP48' uses all fourty-eight; while
the 'CP24' uses the first twenty-four.

This type is equivalent to the set of these numbers:

@
{0, 1, 2, ... 46, 47}
@

-}
data KeyName
  = Key00
  | Key01
  | Key02
  | Key03
  | Key04
  | Key05
  | Key06
  | Key07
  | Key08
  | Key09
  | Key10
  | Key11
  | Key12
  | Key13
  | Key14
  | Key15
  | Key16
  | Key17
  | Key18
  | Key19
  | Key20
  | Key21
  | Key22
  | Key23
  | Key24
  | Key25
  | Key26
  | Key27
  | Key28
  | Key29
  | Key30
  | Key31
  | Key32
  | Key33
  | Key34
  | Key35
  | Key36
  | Key37
  | Key38
  | Key39
  | Key40
  | Key41
  | Key42
  | Key43
  | Key44
  | Key45
  | Key46
  | Key47

--------------------------------------------------

{-| 

-}
data KeyConfig a = KeyConfig
 { name             :: KeyName
 , level            :: Level
 , config           :: KeyConfig' a
 }

--------------------------------------------------

{-| 

-}
data Level
 = Level1
 | Level2

--------------------------------------------------

{-| 

-}
data KeyConfig' a = KeyConfig'
 { mode             :: EventsMode
 , repetition       :: AutoRepeat
 , events           :: Events
 , description      :: a
 }

--------------------------------------------------

{-| 

-}
data AutoRepeat
 = AutoRepeatYes
 | AutoRepeatNo

--------------------------------------------------

{-| 

-}
data EventsMode
 = AutoSenseMode
 | SeparateUpCodesMode
 | MacroModeAdvanced
 | LiteralModeAdvanced

defaultEventsMode :: EventsMode
defaultEventsMode = AutoSenseMode

--------------------------------------------------

{-| 

-}
newtype Events = Events { fromEvents :: 
 [Event]
 }

--------------------------------------------------

{-|

* A key event, sent by the device to the computer.
* A modifier event, sent by the device to the computer.
Modifiers are "held" by sandwiching other 'Event's between 
pressing it ('PressDown') and releasing it ('ReleaseUp') only after.
* Delay (for example, by some hundreds of milliseconds) before sending other 'Event's. 
(currently, the only "command" or "pseudo-event").

-}
data Event
 = KeyEvent      Key
 | ModifierEvent ModifierToggle
 | CommandEvent  Delay

--------------------------------------------------

{-| Modifier-keys' events, unlike other keys' events,
have an explicit 'Direction'.

-}
data ModifierToggle = ModifierToggle
 { direction :: Direction
 , modifier  :: Modifier
 }

--------------------------------------------------

{-| The modifier keys of the device's "generic keyboard" representation.

-}
data Modifier
 = ModifierCtrl
 | ModifierAlt
 | ModifierShift
 | ModifierWin

--------------------------------------------------

{-| 

-}
data Direction
 = PressDown
 | ReleaseUp

--------------------------------------------------

{-| The (non-modifier) keys of the device's "generic keyboard" representation.

-}
data Key

 = KeyA
 | KeyB
 | KeyC
 | KeyD
 | KeyE
 | KeyF
 | KeyG
 | KeyH
 | KeyI
 | KeyJ
 | KeyK
 | KeyL
 | KeyM
 | KeyN
 | KeyO
 | KeyP
 | KeyQ
 | KeyR
 | KeyS
 | KeyT
 | KeyU
 | KeyV
 | KeyW
 | KeyX
 | KeyY
 | KeyZ

 | KeyControl
 | KeyCapsLock
 | KeyShift
 | KeyOption
 | KeyFunction

 | KeyGrave
 | KeyMinus
 | KeyEqual
 | KeyDelete
 | KeyForwardDelete
 | KeyLeftBracket
 | KeyRightBracket
 | KeyBackslash
 | KeySemicolon
 | KeyQuote
 | KeyComma
 | KeyPeriod
 | KeySlash

 | KeyTab
 | KeySpace
 | KeyReturn

 | KeyLeftArrow
 | KeyRightArrow
 | KeyDownArrow
 | KeyUpArrow

 | KeyZero
 | KeyOne
 | KeyTwo
 | KeyThree
 | KeyFour
 | KeyFive
 | KeySix
 | KeySeven
 | KeyEight
 | KeyNine

 | KeyEscape
 | KeyF1
 | KeyF2
 | KeyF3
 | KeyF4
 | KeyF5
 | KeyF6
 | KeyF7
 | KeyF8
 | KeyF9
 | KeyF10
 | KeyF11
 | KeyF12
 | KeyF13
 | KeyF14
 | KeyF15
 | KeyF16
 | KeyF17
 | KeyF18
 | KeyF19
 | KeyF20

--------------------------------------------------

{-|

This type is equivalent to the set of these numbers:

@
{4, 8, 12, ... 496, 500}
@

-}
data Delay

 = Delay004ms
 | Delay008ms
 | Delay012ms
 | Delay016ms
 | Delay020ms
 | Delay024ms
 | Delay028ms
 | Delay032ms
 | Delay036ms
 | Delay040ms
 | Delay044ms
 | Delay048ms
 | Delay052ms
 | Delay056ms
 | Delay060ms
 | Delay064ms
 | Delay068ms
 | Delay072ms
 | Delay076ms
 | Delay080ms
 | Delay084ms
 | Delay088ms
 | Delay092ms
 | Delay096ms
 | Delay100ms
 | Delay104ms
 | Delay108ms
 | Delay112ms
 | Delay116ms
 | Delay120ms
 | Delay124ms
 | Delay128ms
 | Delay132ms
 | Delay136ms
 | Delay140ms
 | Delay144ms
 | Delay148ms
 | Delay152ms
 | Delay156ms
 | Delay160ms
 | Delay164ms
 | Delay168ms
 | Delay172ms
 | Delay176ms
 | Delay180ms
 | Delay184ms
 | Delay188ms
 | Delay192ms
 | Delay196ms
 | Delay200ms
 | Delay204ms
 | Delay208ms
 | Delay212ms
 | Delay216ms
 | Delay220ms
 | Delay224ms
 | Delay228ms
 | Delay232ms
 | Delay236ms
 | Delay240ms
 | Delay244ms
 | Delay248ms
 | Delay252ms
 | Delay256ms
 | Delay260ms
 | Delay264ms
 | Delay268ms
 | Delay272ms
 | Delay276ms
 | Delay280ms
 | Delay284ms
 | Delay288ms
 | Delay292ms
 | Delay296ms
 | Delay300ms
 | Delay304ms
 | Delay308ms
 | Delay312ms
 | Delay316ms
 | Delay320ms
 | Delay324ms
 | Delay328ms
 | Delay332ms
 | Delay336ms
 | Delay340ms
 | Delay344ms
 | Delay348ms
 | Delay352ms
 | Delay356ms
 | Delay360ms
 | Delay364ms
 | Delay368ms
 | Delay372ms
 | Delay376ms
 | Delay380ms
 | Delay384ms
 | Delay388ms
 | Delay392ms
 | Delay396ms
 | Delay400ms
 | Delay404ms
 | Delay408ms
 | Delay412ms
 | Delay416ms
 | Delay420ms
 | Delay424ms
 | Delay428ms
 | Delay432ms
 | Delay436ms
 | Delay440ms
 | Delay444ms
 | Delay448ms
 | Delay452ms
 | Delay456ms
 | Delay460ms
 | Delay464ms
 | Delay468ms
 | Delay472ms
 | Delay476ms
 | Delay480ms
 | Delay484ms
 | Delay488ms
 | Delay492ms
 | Delay496ms
 | Delay500ms

 deriving (Eq,Enum)

--------------------------------------------------

-- newtype KeyCount = KeyCount { fromKeyCount ::
--  Natural
--  }

-- newtype KeyName = KeyName { fromKeyName ::
--  Natural
--  }


-- describeDevice :: KeyCount -> Text
-- describeDevice = \case
--   KeyCount 24 -> "Genovation ControlPad CP24"
--   KeyCount 48 -> "Genovation ControlPad CP48"
--   KeyCount _  -> ""
