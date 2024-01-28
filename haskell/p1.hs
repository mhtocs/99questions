{-
    ## Problem 1
    (*) Find the last element of a list.Solutions
    
    λ> myLast [1,2,3,4]
    4
    
    λ> myLast ['x','y','z']
    'z'
-}

myLast :: [a] -> a              -- signature
myLast [x] = x                  -- if one element return it
myLast []  = error "Empty list"
myLast (_:xs) = myLast xs       -- recursively get the last element


main :: IO ()
main = do
    print $ myLast [1,2,3,4]
    print $ myLast ['a','b','c']
