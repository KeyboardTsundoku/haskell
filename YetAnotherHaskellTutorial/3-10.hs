
{-
askForNumbers = do
  putStrLn "Give me a number (Or 0 to stop):"
  let nums = giveMeNumber 0
  let num = head nums
  let wr = show num
  putStrLn wr

giveMeNumber zero = do
  line <- getLine
  let number = read line
  --putStrLn line --number
  if number == zero
    then return [] 
  else do
    rest <- giveMeNumber zero 
    return (number : rest)
  --if number == "0"
  --  then do putStrLn number
  --else do putStrLn "blah"
-}

kPrompt :: String
kPrompt = "Give me a number:"

factorial :: Int -> Int
factorial 1 = 1
factorial n = n * (factorial (n - 1))

presentFactorial :: Int -> String
presentFactorial n =
  let f = factorial n
  in "Factorial of " ++ (show n) ++ " is " ++ (show f) ++ "."

sumNumbers :: [String] -> [String]
sumNumbers ls =
  let allNumbers = takeWhile (/= 0)  $ map (read :: String -> Int) ls
      theSum = sum allNumbers
      theProduct = product allNumbers

      reporting =
        [ ("The sum is: " ++ (show theSum))
        , ("The product is: " ++ (show theProduct))
        ] ++ map presentFactorial (filter (> 0) allNumbers)

      prompting = kPrompt:(map (\_ -> kPrompt) allNumbers)

  in prompting ++ reporting

main = interact $ unlines . sumNumbers . lines


