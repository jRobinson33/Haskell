--Guards example
--6/12/2019

{-
    Guards are a way of making sure a value conforms to some form and deconstructing it, 
    guards are a way of testing whether some property of a value (or several of them) are
    true or false
-}

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo you!"
    | bmi <= 25.0 = "You're supposeduly normal. Pffft, I bet you're ugly"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

{-
    This uses pipes at the beginning of each piece
    Evaluation for true or false happens, if it's true then that part is used
    If something evaluates to false, it falls through to the next level
    This is like a large if, else if, else structure in some languages

    otherwise simply defines as True
    It becomes a catch-all for us

    The primary difference between guards and pattern matching
    guards evaluate boolean, and pattern matching checks for a pattern

    If all the guards of a function evaluate to False (and we haven't provided an otherwise)
    , evaluation falls through to the next pattern, and that is how guards and patterns work together
    If no guard or patter is found, then an error is thrown
-}

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo you!"
    | weight / height ^ 2 <= 25.0 = "You're supposeduly normal. Pffft, I bet you're ugly"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b


--We can also write guards inline, but it could be less readable
max2 :: (Ord a) => a -> a -> a
max2 a b | a > b = a | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT
