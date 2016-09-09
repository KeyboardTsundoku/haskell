module My_Map where

import qualified Data.Char

my_map f [] = [] 
my_map f (x:xs) = f(x) : my_map f xs
