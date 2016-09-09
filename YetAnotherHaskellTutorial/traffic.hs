module Traffic where
data TrafficLight = 
  Red
  | Yellow
  | Green

changeTrafficLight:: TrafficLight -> TrafficLight
changeTrafficLight Red = Green
changeTrafficLight Green = Yellow
changeTrafficLight Yellow = Red

canCrossTrafficLight:: TrafficLight -> Bool
canCrossTrafficLight Red = False
canCrossTrafficLight _ = True

cantCrossTrafficLight:: TrafficLight -> Bool
cantCrossTrafficLight light = not (canCrossTrafficLight light)

cantcantcantCrossTrafficLight:: TrafficLight -> Bool
cantcantcantCrossTrafficLight = not . canCrossTrafficLight 


instance Show TrafficLight where 
  show Red = "Red"
  show Green = "Green"
  show Yellow = "Yellow"

{-
class Eq a where
  (==) :: a -> a -> Bool
  a == b = not (a /= b)
  (/=) :: a -> a -> Bool
  a /= b = not (a == b)

class Eq a where
  (==) a b = not $ (/=) a b
  (/=) a b = not $ (==) a b
-}

instance Eq TrafficLight where
  (==) Red Red = True
  (==) Green Green = True
  (==) Yellow Yellow = True
  (==) _ _ = False

cantNotCrossTrafficLight:: TrafficLight -> Bool
cantNotCrossTrafficLight light = light /= Red
