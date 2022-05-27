{-# LANGUAGE FlexibleContexts #-}
module ABH.Debug where

debugAppendFile :: String -> IO ()
debugAppendFile v = do 
  appendFile "/tmp2/foo.txt" (v ++ "\n")
