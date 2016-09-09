module CountLower where
import qualified Data.Char
string = "aBCdE"
lower = filter Data.Char.isLower string
res = length lower 
