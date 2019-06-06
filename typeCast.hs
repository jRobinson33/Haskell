{- Explaination of TypeCasts in Haskell
	6/6/2019
	
	Everything has a type in Haskell, which is why it's such a safe language
	The compiler won't compile if things are not of the correct type
-}

--Funcitons can have their own type declarations
--We can check what the type of something is in Haskell with the command :terms
--For example, in the interactive ghci terminal, we can type :t 'c'
--and it will tell us that it is a char

{-This type declaratoin means that the function maps from a list of characters
	to a list of characters, or more simply put it maps from a string to a string
	since it's easier to think in terms of string to string, we will comment out
	the list of characters to list of characters type declaration
-}
--removeNonUppercase :: [Char] -> [Char]
removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']]

{- We can also use type declarations for multiple parameters 
	Here we simply link the parameters with the return type.
	There is nothing special to distinquish between the parameters
	and the return type
-}
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

--The types are what we typically see in many programming languages
--Int, Integer, Float, Double, Bool, Char
--Integer, as opposed to Int, is intended to be used for very large numbers

--some examples
factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

concatenate :: [Char] -> [Char] -> [Char]
concatenate st1 st2 = st1 ++ " " ++ st2