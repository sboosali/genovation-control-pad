----------------------------------------

module Prelude_genovation_control_pad
 ( module X
 ) where

----------------------------------------

import "spiros" Prelude.Spiros as X hiding (Text)

--TODO different subsets of re-exports (like one without text).
--TODO signatures for both Text-versus-String-versus-Bytestring and Lazy-versus-Strict.

----------------------------------------

import "enumerate" Enumerate as X

----------------------------------------

import "text" Data.Text as X (Text)

----------------------------------------

import "generic-lens" Data.Generics.Product as X hiding (IsList,list)
import "generic-lens" Data.Generics.Sum     as X

----------------------------------------