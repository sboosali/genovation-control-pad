{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards       #-}

{-# LANGUAGE DeriveAnyClass        #-}

--------------------------------------------------

{-|

-}
module GenovationControlPad.Create where

import GenovationControlPad.Types
import GenovationControlPad.Encode

--------------------------------------------------

import "spiros" Prelude.Spiros

--------------------------------------------------

{-| Split an arbitrary duration, in milliseconds, into chunks of valid 'Delay's.

>>> delay 1200
[Delay500ms,Delay500ms,Delay200ms]

>>> delay 250
[Delay252ms]

>>> delay 0
[]

-}
delay :: Int -> [Delay]
delay i =
  longDelaysPrefix <> shortDelaySuffix

  where
  (numberOfLongDelays, durationOfShortDelay)
    = i `divMod` 500

  longDelaysPrefix
    = Delay500ms & replicate numberOfLongDelays

  shortDelaySuffix
    = toDelay durationOfShortDelay & maybe2list

--------------------------------------------------



--------------------------------------------------