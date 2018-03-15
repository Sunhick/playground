--
-- Main module
-- 
module Main where

import Lib
import Initials
import Graphics.Shape

main :: IO()
main = do
  someFunc
  print(initials "Sunil" "Murthy")
  print(initials "First" "Second")

  let cir = Circle "circle" "30r" 3090
  print(cir)

  let tri = Triangle "Triangle" "tri" 30
  print(tri)
