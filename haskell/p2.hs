{--
    ## Problem 2
    (*) Find the second last element of a list
    
    λ> myButLast [1,2,3,4]
    3
    
    λ> myButLast ['x','y','z']
    'y'
--}

myButLast :: [a] -> a                   -- signature
myButLast [x,_] = x                     -- if only two element, get first
myButLast (_:xs) = myButLast xs         -- recurse

main :: IO ()
main = do
    print $ myButLast [1,2,3,4]
    print $ myButLast ['a','b','c']
