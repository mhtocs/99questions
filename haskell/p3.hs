elementAt :: [a] -> Int -> a
elementAt [] _     = error "Out of bound!"
elementAt (x:_) 1  = x
elementAt (_:xs) k
  | k < 1          = error "Out of bound!"
  | otherwise      = elementAt xs (k-1)

main :: IO()
main = do 
    print $ elementAt [1,2,3,4] 2
    print $ elementAt [4,5,3,1,2,4,6,7] 3
