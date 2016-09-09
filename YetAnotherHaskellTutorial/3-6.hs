module FirstSecondOfList
  where
list = [(5,'b'),(1,'c'),(6,'a')]
rest = tail list
second = head rest
res = fst second
