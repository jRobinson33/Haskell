--Pattern matching examples
--6/11/2019


--pattern matching checks the options from top to bottom
--this can be used for decision structure

--if then like statement
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

--switch structure
sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "four!"
sayMe 5 = "five!"
sayMe x = "Not between 1 and 5"

--we can use it with function recursion
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

--Pattern matching will fail if it recieves data that it doesn't expect
--So we should always make a catch-all pattern so the program doesn't crash
--from something unexpected

--pattern matching can be used on tuples
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
---addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x,_,_) = x

second :: (a,b,c) -> b
second (_,y,_) = y

third :: (a,b,c) -> c
third (_,_,z) = z

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list has many elements. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs 

--as patterns
{-
    There's also a thing called as patterns. Those are a handy way of 
    breaking something up according to a pattern and binding it to names
    whilst still keeping a reference to the whole thing. You do that by
    putting a name and an @ in front of a pattern. For instance, the 
    pattern xs@(x:y:ys). This pattern will match exactly the same thing
    as x:y:ys but you can easily get the whole list via xs instead of
    repeating yourself by typing out x:y:ys in the function body again.
     Here's a quick and dirty example:
-}

capital :: String -> String
capital "" = "Empty string. whoops!"
capital all@(x:xs)="The first letter of " ++ all ++ " is " ++ [x]

{-
        One more thing — you can't use ++ in pattern matches. If you 
        tried to pattern match against (xs ++ ys), what would be in the
        first and what would be in the second list? It doesn't make much
        sense. It would make sense to match stuff against (xs ++ [x,y,z]) 
        or just (xs ++ [x]), but because of the nature of lists, you can't 
        do that.
-}
