--Type classes example
--6/10/2019

{- A typeclass is a sort of interface that defines a behavior
    If a type is a part of a typeclass, that means that it supports and implements the behavior
    the typeclass describes. Typeclasses are not like classes in C, C++, or Java
-}

-- :t (==)
--produces (==) :: (Eq a) => a -> a -> Bool
-- class constraint =>
-- Eq means equality function, everything in Haskell is a function

--Eq is used for types that support equality testing
--Ord is for types that have an ordering
--Show members can be presented as strings
--Read is the opposite of Show, it takes a string and returns a type whichis a member of Read
--  read "5" :: Int    produces  5
--  read "5" :: Float  produces  5.0
--Enum members are sequentially ordered types - they can be enumerated
--Bounded members have an upper and lower bound
--  minBound :: Int    produces -2147483648
--  maxBound :: Char   produces '\1114111'
--  maxBound :: Bool   produces True
--  minBound :: Bool   produces False
--Num is a numberic typeclass
--Integral is also a numberic typeclass. But it includes only integral (whole) numbers
--Floating includes floating point numbers, so Float and Double

--A useful function for dealing with numbers is fromIntegral
--  One use is to be able to add a number to the length of a list
--  fromIntegral (length [1,2,3,4]) + 3.2