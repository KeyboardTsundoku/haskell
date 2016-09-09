module Json where
data Json =
  JsonBool Bool
  | JsonString String
  | JsonNumber Double
  | JsonNil 
  | JsonArrays [Json]
  | JsonObject [(String, Json)]
  deriving (Show)

