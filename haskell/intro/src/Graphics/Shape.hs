module Graphics.Shape (          
               Circle   
             , Rectangle
             , Triangle 
             , Rhombus  
             ) where

data Circle = Circle String String Int deriving (Show)

data Rectangle = Rectangle String String Int deriving (Show)

data Triangle = Triangle String String Int deriving (Show)

data Rhombus = Rhombus String String Int deriving (Show)
