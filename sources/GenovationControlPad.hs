{-# language GeneralizedNewtypeDeriving #-}

--------------------------------------------------

{-|

-}

module GenovationControlPad 
 ( module GenovationControlPad.Types
 , module GenovationControlPad.Render
 , module GenovationControlPad.Encode
 , module GenovationControlPad.Parse
 , module GenovationControlPad.Create

 , module GenovationControlPad
 ) where

--------------------------------------------------

import GenovationControlPad.Types
import GenovationControlPad.Render
import GenovationControlPad.Encode
import GenovationControlPad.Parse
import GenovationControlPad.Create

--------------------------------------------------

--------------------------------------------------

import Paths_genovation_control_pad

--------------------

import "spiros" Prelude.Spiros hiding (Text)

--TODO different subsets of re-exports (like one without text).
--TODO signatures for both Text-versus-String-versus-Bytestring and Lazy-versus-Strict.

--------------------

import "text" Data.Text (Text)

--------------------

import "ini" Data.Ini

--------------------------------------------------

{-| 

-}
newtype Ckd = Ckd { getCkd :: Ini }
 deriving (Show)

--------------------------------------------------

{-|

wraps:

@
'parseIni' :: Text -> Either String Ini
@

-}
parseCkd :: Text -> Either String Ckd
parseCkd = parseIni > fmap Ckd

test :: IO ()
test = do
 path <- getDataFileName "Simple.ckd"
 parsed <- readIniFile path
 print parsed

--------------------------------------------------