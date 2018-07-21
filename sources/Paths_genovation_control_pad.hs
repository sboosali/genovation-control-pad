-- | (See <http://neilmitchell.blogspot.com/2008/02/adding-data-files-using-cabal.html>.)

module Paths_genovation_control_pad where

import "base" Prelude

-- | i.e. always check the current directory for data files,
-- and only the current directory.

getDataFileName :: FilePath -> IO FilePath

-- getDataFileName = return
getDataFileName s = return ("data/" ++ s)

