--Case expressions in Haskell
--6/27/2019

head' :: [a] -> a
head' [] = error "No head for empty lists!"
head' (x:_) = x

head2 :: [a] -> a
head2 xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

{-
    case expression of pattern -> result
                       pattern -> result
                       pattern -> result
                       ...
-}

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."

describeList2 :: [a] -> String
describeList2 xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."