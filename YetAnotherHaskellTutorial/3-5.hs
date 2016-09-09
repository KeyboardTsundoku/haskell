module ListMax
  where
numbers = [5, 10, 2, 8, 1]
res = foldl (max) 0 numbers
