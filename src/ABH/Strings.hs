{-# LANGUAGE FlexibleContexts #-}
module ABH.Strings where

import Data.String
import Data.String.Conversions

fscs :: (ConvertibleStrings a String, IsString b) => a -> b
fscs = fromString . cs

fs :: IsString a => String -> a
fs = fromString
