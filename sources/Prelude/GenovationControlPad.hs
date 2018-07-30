----------------------------------------

module Prelude.GenovationControlPad
 ( module X
 ) where

----------------------------------------

import "spiros" Prelude.Spiros as X hiding (Text)

--TODO different subsets of re-exports (like one without text).
--TODO signatures for both Text-versus-String-versus-Bytestring and Lazy-versus-Strict.

--------------------

import "text" Data.Text as X (Text)

--------------------

----------------------------------------


----------------------------------------