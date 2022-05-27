{-# LANGUAGE FlexibleContexts #-}
module ABH.List where

sliceByIndex :: Int -> Int -> [a] -> [a]
sliceByIndex from to xs = take (to - from + 1) (drop from xs)

