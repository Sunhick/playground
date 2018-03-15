module Main where

import Lib
import Initials
import Graphics.Shape

main = do
  someFunc
  print(initials "Sunil" "Murthy")
  print(initials "First" "Second")

  let cir = Circle "circle" "30r" 3090
  print(cir)
